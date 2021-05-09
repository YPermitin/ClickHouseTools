#!/bin/bash

# Создание дампов базы данных по объектам (схема и данные)

OUTDIR=. # Путь для сохранения дампов. В данном случае - текущий каталог, откуда запускается скрипт

clickhouse_user="default" # Имя пользователя
clickhouse_password="<Pas$w0rd>" # Пароль
# Список баз в виде строк через запятую. Например: clickhouse_databases=("Test1", "Test2")
# Если список пустой, но обрабатываются все базы, кроме системных
clickhouse_databases=() 
filtersize=${#clickhouse_databases[@]}

while read -r db ; do
  while read -r table ; do

  if [ "$db" == "system" ]; then
     echo "skip system db"
     continue 2;
  fi

  if (( $filtersize > 0)); then
    if [[ ! ${clickhouse_databases[*]} =~ "$db" ]]; then
       echo "skip $db.$table by filter"
       continue;
    fi
  fi

  if [[ "$table" == ".inner."* ]]; then
     echo "skip materialized view $table ($db)"
     continue;
  fi

  echo "export table $table from database $db"

    # Сохраняем схему
    clickhouse-client --user $clickhouse_user --password $clickhouse_password -q "SHOW CREATE TABLE ${db}.${table}" > "${OUTDIR}/${db}_${table}_schema.sql"

    # Сохраняем данные
    clickhouse-clien --user $clickhouse_user --password $clickhouse_passwordt -q "SELECT * FROM ${db}.${table} FORMAT TabSeparated" | pigz > "${OUTDIR}/${db}_${table}_data.tsv.gz"

  done < <(clickhouse-client --user $clickhouse_user --password $clickhouse_password -q "SHOW TABLES FROM $db")
done < <(clickhouse-client --user $clickhouse_user --password $clickhouse_password -q "SHOW DATABASES")

# Для восстановления необходимо выполнить подобные шаги:
# 1. Создаем базу данных
# clickhouse-client -q "CREATE DATABASE MyDb"
# 2. Создаем объект базы по SQL-скрипту для схемы
# clickhouse-client --database MyDb < MyDb_TableName_schema.sql
# 3. Восстанавливаем данные в таблице
# zcat MyDb_TableName_data.tsv.gz | clickhouse-client --database MyDb -- query="INSERT INTO TableName FORMAT TSV"
