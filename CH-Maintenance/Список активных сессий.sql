-- Список активных процессов в базе
SHOW PROCESSLIST;

-- ИЛИ с более гибким способом выборки

SELECT query_id, user, address, elapsed, query   FROM system.processes ORDER BY query_id;

-- По этому же пути можно получить общее количество соединений

SELECT * FROM system.metrics WHERE metric LIKE '%Connection';