#!/bin/bash

# Создание резервной копии базы данных через ALTER TABLE ... FREEZE PARTITION ...
# с помощью утилиты clickhouse-backup (https://github.com/AlexAkulov/clickhouse-backup)

# 0. Настройка работы clickhouse-backup
# Не забываем сделать предварительную настройку в файле "/etc/clickhouse-backup/config.yml"
# Подробнее читайте на странице проекта.

# 1. Получаем список таблиц на сервере
clickhouse-backup tables
<<'###BLOCK-COMMENT'
MyDatabase.Test1
MyDatabase.Test2
###BLOCK-COMMENT

# 2. Просматриваем список ранее сделанных бэкапов
clickhouse-backup list
<<'###BLOCK-COMMENT'
>> No backups
###BLOCK-COMMENT

# 3. Создаем резервную копию таблиц базы данных "MyDatabase"
clickhouse-backup create --tables=MyDatabase.* MyDatabase
<<'###BLOCK-COMMENT'
2021/03/10 18:55:30 Create backup 'MyDatabase'
2021/03/10 18:55:30 Freeze 'MyDatabase.Test1'
2021/03/10 18:55:30 Freeze 'MyDatabase.Test2'
2021/03/10 18:55:30 Copy part hashes
2021/03/10 18:55:30 Writing part hashes
2021/03/10 18:55:30 Copy metadata
2021/03/10 18:55:30   Done.
2021/03/10 18:55:30 Move shadow
2021/03/10 18:55:30   Done.
###BLOCK-COMMENT

# 4. Проверяем сформированный бэкап
clickhouse-backup list
<<'###BLOCK-COMMENT'
Local backups:
- 'MyDatabase'  (created at 10-03-2021 18:55:30)
###BLOCK-COMMENT

# 5. Эмуляция катастрофы. Удаляем базу данных
clickhouse-client -q 'DROP DATABASE MyDatabase'

# 6. Восстанавливаем базу данных
clickhouse-backup restore MyDatabase
<<'###BLOCK-COMMENT'
2021/03/10 19:00:00 Create table 'MyDatabase.Test1'
2021/03/10 19:00:00 Create table 'MyDatabase.Test2'
2021/03/10 19:00:00 Prepare data for restoring 'MyDatabase.Test1'
2021/03/10 19:00:00 ALTER TABLE `MyDatabase`.`Test1` ATTACH PART '202101_142_142_0'
2021/03/10 19:00:00 ALTER TABLE `MyDatabase`.`Test1` ATTACH PART '202101_143_143_0'
2021/03/10 19:00:00 ALTER TABLE `MyDatabase`.`Test1` ATTACH PART '202101_144_144_0'
2021/03/10 19:00:00 ALTER TABLE `MyDatabase`.`Test1` ATTACH PART '202101_1_141_28_2'
2021/03/10 19:00:00 Prepare data for restoring 'MyDatabase.Test2'
2021/03/10 19:00:00 ALTER TABLE `MyDatabase`.`Test2` ATTACH PART '202101_125_141_3'
2021/03/10 19:00:00 ALTER TABLE `MyDatabase`.`Test2` ATTACH PART '202101_142_142_0'
2021/03/10 19:00:00 ALTER TABLE `MyDatabase`.`Test2` ATTACH PART '202101_143_143_0'
2021/03/10 19:00:00 ALTER TABLE `MyDatabase`.`Test2` ATTACH PART '202101_144_144_0'
2021/03/10 19:00:00 ALTER TABLE `MyDatabase`.`Test2` ATTACH PART '202101_1_67_5'
2021/03/10 19:00:00 ALTER TABLE `MyDatabase`.`Test2` ATTACH PART '202101_68_124_5'
###BLOCK-COMMENT