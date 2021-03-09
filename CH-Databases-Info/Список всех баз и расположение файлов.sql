-- https://clickhouse.tech/docs/en/operations/system-tables/databases/

select
    name,
    engine,
    data_path,
    metadata_path,
    uuid
from system.databases