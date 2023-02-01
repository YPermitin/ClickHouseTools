-- Документация: https://clickhouse.com/docs/ru/operations/system-tables/role-grants/

SELECT 
    user_name, 
    role_name, 
    granted_role_name, 
    granted_role_is_default, 
    with_admin_option
FROM system.role_grants;
