-- https://clickhouse.tech/docs/en/operations/system-tables/columns/

select
    database,
    table,
    name,
    type,
    position,
    default_kind,
    default_expression,
    data_compressed_bytes,
    data_uncompressed_bytes,
    marks_bytes,
    comment,
    is_in_partition_key,
    is_in_sorting_key,
    is_in_primary_key,
    is_in_sampling_key,
    compression_codec
from system.columns