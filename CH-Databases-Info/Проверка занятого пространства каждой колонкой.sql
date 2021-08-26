SELECT database, table, column, any(type),
       sum(column_data_compressed_bytes) compressed, 
       sum(column_data_uncompressed_bytes) uncompressed,
       uncompressed/compressed ratio,
       compressed/sum(rows) bpr,
       sum(rows) 
  FROM system.parts_columns 
 WHERE active AND database <> 'system' 
 GROUP BY database, table, column 
 ORDER BY database, table, column;