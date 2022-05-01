-- https://clickhouse.com/docs/en/sql-reference/statements/alter/partition/#alter_drop-partition
/*
DETACH PARTITION — Moves a partition to the detached directory and forget it.
DROP PARTITION — Deletes a partition.
ATTACH PART|PARTITION — Adds a part or partition from the detached directory to the table.
ATTACH PARTITION FROM — Copies the data partition from one table to another and adds.
REPLACE PARTITION — Copies the data partition from one table to another and replaces.
MOVE PARTITION TO TABLE — Moves the data partition from one table to another.
CLEAR COLUMN IN PARTITION — Resets the value of a specified column in a partition.
CLEAR INDEX IN PARTITION — Resets the specified secondary index in a partition.
FREEZE PARTITION — Creates a backup of a partition.
UNFREEZE PARTITION — Removes a backup of a partition.
FETCH PARTITION|PART — Downloads a part or partition from another server.
MOVE PARTITION|PART — Move partition/data part to another disk or volume.
UPDATE IN PARTITION — Update data inside the partition by condition.
DELETE IN PARTITION — Delete data inside the partition by condition.
*/

-- Например, удаление:
ALTER TABLE TableName DROP PARTITION '202109';