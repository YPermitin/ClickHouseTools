-- Документация: https://clickhouse.com/docs/ru/operations/system-tables/grants/

select 
	-- База данных
	database,
	-- Пользователь
	user_name,
	-- Таблица
	`table`,
	-- Имя столбца
	`column` 
	-- Роль
	role_name,
	-- Параметры доступа
	access_type,
	-- Признак отмены некоторых привелегий
	is_partial_revoke,
	-- Разрешение предоставлено с опцией WITH GRANT OPTION
	grant_option 
from system.grants
order by database, user_name  