-- Для включения сбора информации о запросах нужно включить сбор параметром log_queries = 1 в файле конфигурации users.xml

SELECT  user, 
    client_hostname AS host, 
    client_name AS client, 
    formatDateTime(query_start_time, '%T') AS started, 
    query_duration_ms / 1000 AS sec, 
    round(memory_usage / 1048576) AS MEM_MB, 
    result_rows AS RES_CNT, 
    toDecimal32(result_bytes / 1048576, 6) AS RES_MB, 
    read_rows AS R_CNT, 
    round(read_bytes / 1048576) AS R_MB, 
    written_rows AS W_CNT, 
    round(written_bytes / 1048576) AS W_MB, 
    query
  FROM system.query_log
 WHERE type = 2
 ORDER BY query_duration_ms DESC
 LIMIT 10