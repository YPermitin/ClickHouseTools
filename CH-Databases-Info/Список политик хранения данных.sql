-- Список политик хранения данных
-- https://clickhouse.com/docs/en/operations/system-tables/storage_policies/

SELECT 
	policy_name, -- Имя
    volume_name, -- Имя раздела
    volume_priority, --  Приоритет
    disks, -- Диски
    max_data_part_size, -- Максимальный размер части
    move_factor,
    prefer_not_to_merge
from system.storage_policies