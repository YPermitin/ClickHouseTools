# Выгрузка результата запроса в файл формата TSV (другие форматы смотрите в документации)
# https://clickhouse.com/docs/en/sql-reference/statements/select/into-outfile/

clickhouse-client 
    --query "select * from ArchiveTechJournal1C.EventData where Period >= '2021-09-01 00:00:00' and Period <= '2021-09-30 23:59:59'" 
    # https://clickhouse.com/docs/en/interfaces/formats
    --format TabSeparated > /mnt/backups/2021-09.tsv