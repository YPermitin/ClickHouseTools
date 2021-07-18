/*С помощью движка таблицы 'File' можно:
- Экспортировать данные из ClickHouse в файл
- Преобразовывать данные из одного формата в другой
- Импортировать данные из файла в базу ClickHouse

Подробная информация: https://clickhouse.tech/docs/ru/engines/table-engines/special/file/

Далее рассмотрим простой пример. */


/* 1. У нас есть файл CSV со следующим содержимым:

1,Name 1
2,Name 2
3,Name 3
4,Name 4
5,Name 5
6,Name 6
7,Name 7
8,Name 8
9,Name 9
10,Name 10

*/

-- 2. Создаем базы данных для примера
CREATE DATABASE OnFiles

-- 3. Создаем таблицу с движком 'File' с нужным набором столбцов и их типами, а также с указанем формата файла.
-- Подробнее о форматах можно прочитать здесь: https://clickhouse.tech/docs/ru/interfaces/formats/
CREATE TABLE DataImportExport.csv_sample_data
(
    `Number` UInt32,
    `Name` String
)
ENGINE = File('CSV');

-- 4. Копируем файл CSV в каталог /var/lib/clickhouse/data/OnFiles/csv_sample_data/data.CSV
-- Например, если файл находился в общем каталоге, то копируем его с Samba по указанному пути
-- cp /var/samba/share/public/sample-data.csv /var/lib/clickhouse/data/OnFiles/csv_sample_data/data.CSV
-- После этого не забываем дать пользователю 'clickhouse' права на этот файл.

-- 5. Выполним чтение из файла
SELECT
	Number,
	Name
FROM csv_sample_data

/* Пример вывода
1	Name 1
2	Name 2
3	Name 3
4	Name 4
5	Name 5
6	Name 6
7	Name 7
8	Name 8
9	Name 9
10	Name 10
*/

-- 6. Добавим новое значение в файл
INSERT INTO csv_sample_data (`Number`, Name)
VALUES (999, 'New value')

-- 7. И прочитаем новое значение
SELECT
	Number,
	Name
FROM csv_sample_data
WHERE Number = 999

/* Пример вывода
999	New value
*/