-- Диски, доступные для хранения данных баз в файловой системе
-- https://clickhouse.com/docs/en/operations/system-tables/disks/

SELECT 
    name, -- Имя диска
    path, -- Путь хранения данных в файловой системе
    free_space, -- Свободное место на диске в байтах
    total_space, -- Полный размер диска в байтах
    keep_free_space -- Размер на диске, который должен быть сохранен свободным в соответствии с конфигурацией сервера ClickHouse.
FROM system.disks;