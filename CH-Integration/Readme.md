# Интеграция

Интеграция ClickHouse с другими СУБД или информационными системами.

## Подключение ClickHouse как Linked Server в SQL Server

Позволяет отправлять запросы к ClickHouse с помощью T-SQL из SQL Server.

* [Пример настройки](https://github.com/ClickHouse/clickhouse-odbc/blob/master/test/mssql.linked.server.sql)
* [Решение некоторой проблемы подключения](https://github.com/ClickHouse/clickhouse-odbc/issues/215)
* [ODBC-драйвер для работы с ClickHouse](https://github.com/ClickHouse/clickhouse-odbc)

## Интеграция ClickHouse и PostgreSQL

Возможности тесной интеграции PostgreSQL и ClickHouse.

* [Официальная документация](https://clickhouse.com/docs/ru/engines/table-engines/integrations/postgresql/)
* [Как мы переносили аналитику из PostgreSQL в ClickHouse](https://habr.com/ru/company/just_ai/blog/589545/)
* [Возможности для интеграции PostgreSQL с ClickHouse](https://pgday.ru/presentation/281/60f04d3f07516.pdf)