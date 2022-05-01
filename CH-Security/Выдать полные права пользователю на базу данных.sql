-- https://clickhouse.com/docs/ru/sql-reference/functions/introspection/
SET allow_introspection_functions=1;

GRANT ALL ON <ИмяБазы>.* TO '<ИмяПользователя>' WITH GRANT OPTION;

/*
-- Или на все объекты всех баз данных
GRANT ALL ON *.* TO '<ИмяПользователя>' WITH GRANT OPTION;
*/