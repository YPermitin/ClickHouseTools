-- https://clickhouse.com/docs/ru/operations/access-rights/#role-management

SELECT 
	name,
	id,
	storage
FROM `system`.roles;
