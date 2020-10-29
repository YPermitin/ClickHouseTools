-- https://clickhouse.tech/docs/en/operations/system-tables/processes/

select
       user,
       query_id,
       address,
       port,
       initial_user,
       initial_query_id,
       initial_address,
       initial_port,
       interface,
       os_user,
       client_hostname,
       client_name,
       client_revision,
       client_version_major,
       client_version_minor,
       client_version_patch,
       http_method,
       http_user_agent,
       quota_key,
       elapsed,
       is_initial_query,
       is_cancelled,
       read_rows,
       read_bytes,
       total_rows_approx,
       written_rows,
       written_bytes,
       memory_usage,
       peak_memory_usage,
       query,
       thread_ids,
       `ProfileEvents.Names`,
       `ProfileEvents.Values`,
       `Settings.Names`,
       `Settings.Values`
from system.processes