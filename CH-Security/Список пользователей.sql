-- https://clickhouse.com/docs/ru/operations/system-tables/users/

SELECT 
	name, 
	id, 
	storage, 
	auth_type, 
	auth_params, 
	host_ip, 
	host_names, 
	host_names_regexp, 
	host_names_like, 
	default_roles_all, 
	default_roles_list, 
	default_roles_except, 
	grantees_any, 
	grantees_list, 
	grantees_except
FROM `system`.users;
