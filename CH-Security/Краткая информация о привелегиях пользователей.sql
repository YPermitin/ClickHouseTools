select 
	-- База данных (если пустое, то все базы)
	ifNull(database, 'All databases') AS "database", 
	-- Пользователь
	ifNull(user_name, 'All users') AS "user_name", 
	-- Список прав (если пустое, то все права)
	groupArray(access_type) as "rights",
	-- Список таблиц (если пустое, то все таблицы)
	groupArray(`table`) as "tables",
	-- Список колонок (если пустое, то все колонки)
	groupArray(`column`) as "culumns"
from system.grants
group by database, user_name
order by database, user_name