-- https://clickhouse.tech/docs/en/operations/system-tables/parts/

select concat(database, '.', table)                         as table,
       formatReadableSize(sum(bytes))                       as size,
       sum(rows)                                            as rows,
       max(modification_time)                               as latest_modification,
       sum(bytes)                                           as bytes_size,
       any(engine)                                          as engine,
       formatReadableSize(sum(primary_key_bytes_in_memory)) as primary_keys_size
from system.parts
where active
group by database, table
order by bytes_size desc;

-- Можно получить более подробную информацию, в т.ч. если база разбита на разные части.

SELECT 
	database, 
	table, 
	partition, 
	name part_name, 
	active, 
	bytes_on_disk,
	*
  FROM system.parts 
  ORDER BY database, table, partition, name