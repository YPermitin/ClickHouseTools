# ClickHouse Tools

Инструменты обслуживания и разработки для Yandex ClickHouse, а также другие интересности

## Инфо о репозитории

Репозиторий содержит полезные скрипты для анализа, разработки и обслуживания баз данных на Yandex ClickHouse.

Материалы по другим темам Вы можете найти на сайте [ypermitin.github.io](https://ypermitin.github.io/).
Последние новости об этой и других разработках, а также выходе других материалов, **[смотрите в Telegram-канале](https://t.me/DevQuietPlace)**.

| № | Раздел | Описание |
| - | ------ | -------- |
| 1 | [Common-Info](CH-Common-Info) | Cкрипты общего назначения для просмотра состояния и настроек инстанса и др |
| 2 | [Data-Model-Info](CH-Data-Model-Info) | Просмотр модели данных и других связанных объектов |
| 3 | [Databases-Info](CH-Databases-Info) | Информация о базах данных |
| 4 | [Statistics](CH-Statistics) | Информация о статистиках, вопросах производительности и их анализе |
| 5 | [Indexes](CH-Indexes) | Информация об индексах, вопросах производительности и их анализе |
| 6 | [File-Groups](CH-File-Groups) | Информация о файловых группах |
| 7 | [Partitioned-Tables-and-Indexes](CH-Partitioned-Tables-and-Indexes) | Секционирование таблиц и индексов |
| 8 | [Perfomance](CH-Perfomance) | Производительность и оптимизация запросов, настроек сервера и поиск узких мест  |
| 9 | [Backup-Info](CH-Backup-Info) | Резервное копирование и восстановление данных |
| 10 | [Maintenance](CH-Maintenance) | Обслуживание баз данных и сервера |
| 11 | [Diagnostics](CH-Diagnostics) | Диагностика работы СУБД |
| 12 | [Data Import & Export](CH-Data-Import-Export) | Все, что связано с импортом и экспортом данных |
| 13 | [Replication](CH-Replication) | Репликация и боль :) |
| 14 | [Security](CH-Security) | Безопасность и права доступа |

## Интересные проекты

На GitHub есть интересные проекты, связанные с ClickHouse. Некоторые из них заслуживают поддержки сообщества.

* [ClickHouse](https://github.com/ClickHouse/ClickHouse) - непосредственно проект самой СУБД ClickHouse от Yandex.
* [clickhouse-backup](https://github.com/AlexAkulov/clickhouse-backup) - инструменты для простой организации бэкапирования баз данных ClickHouse.
* [ClickHouse.Client](https://github.com/DarkWanderer/ClickHouse.Client) - лучший клиент для ClickHouse на базе платформы .NET.
* [ClickHouseMigrator](https://github.com/zlzforever/ClickHouseMigrator) - мощная разработка для быстрой миграции данных в ClickHouse из различных источников.
* [Monq.Core.ClickHouseBuffer](https://github.com/MONQDL/Monq.Core.ClickHouseBuffer) - .NET-библиотека для буферизации записей с последующей пакетной вставкой данных.
* [YY.DBTools](https://github.com/YPermitin/YY.DBTools) - утилиты для различных СУБД, в т.ч. экспорта файлов расширенных событий (Extended Events) в базу данных ClickHouse.
* [YY.EventLogExportAssistant](https://github.com/YPermitin/YY.EventLogExportAssistant) - библиотека для экспорта данных журнала регистрации платформы 1С:Предприятие 8.x.
* [YY.TechJournalExportAssistant](https://github.com/YPermitin/YY.TechJournalExportAssistant) - библиотека для экспорта данных технологического журнала платформы 1С:Предприятие 8.x.
* [OneSTools.EventLog](https://github.com/akpaevj/OneSTools.EventLog) - альтернативная реализация экспорта журнала регистрации платформы 1С в базу ClickHouse. Также есть [разработка для технологического журнала](https://github.com/akpaevj/OneSTools.TechLog).

Конечно, это далеко не полный список, т.к. [проектов уже очень много](https://github.com/search?q=ClickHouse)!

## Полезные ссылки

* [Официальная документация](https://clickhouse.tech/docs/ru//index.html) - официальный источник информации о столбцовой СУБД.
* [Блог компании Altinity](https://altinity.com/blog/) - блог компания Altinity, сопровожденца и внедренца ClickHouse.
* Материалы по хранению логов в ClickHouse:
    * [TESTING CLICKHOUSE AS LOGS ANALYSIS STORAGE](https://blog.luisico.net/2019/03/17/testing_clickhouse_as_logs_analysis_storage/) - пример хранения логов в ClickHouse и их доставки туда.
    * [Разрабатываем самый удобный в мире* интерфейс для просмотра логов](https://m.habr.com/ru/post/512084/) - пример использования ClickHouse для хранения логов в связке с Graphana для визуализации.
    * [Как ClickHouse помогает собирать логи Nginx](https://gon.gl/blog/nginx-log-processing-with-clickhouse/) - еще один пример сбора и обработки логов в ClickHouse.
* [Использование Clickhouse в качестве замены ELK, Big Query и TimescaleDB](https://habr.com/ru/company/ua-hosting/blog/483112/)
* [Переезжаем на ClickHouse: 3 года спустя](https://habr.com/ru/company/oleg-bunin/blog/328784/)
* [Эффективное использование ClickHouse. Алексей Миловидов (Яндекс)](https://habr.com/ru/post/514840/)
* Интересные решения для ClickHouse или на базе ClickHouse:
    * [ClickHouse](https://github.com/ClickHouse/ClickHouse) - репозиторий самой СУБД. Отсюда все и начинается :)
    * [clickhouse-operator](https://github.com/Altinity/clickhouse-operator) - полезное для создания, настройки и управления кластерами ClickHouse, работающими в Kubernetes.
    * [Clickhouse Exporter for Prometheus](https://github.com/ClickHouse/clickhouse_exporter) - инструмент для экспорта метрик ClickHouse для Prometheus.
    * [clickhouse-backup](https://github.com/AlexAkulov/clickhouse-backup) - инструменты для настройки резервного копирования баз ClickHouse.
    * [tabix](https://github.com/tabixio/tabix) - простое клиентское приложение для ClickHouse (визуализация, редактор запросов и кое-что еще).
    * [Vektor](https://github.com/timberio/vector) - мощный инструмент для отправки данных и операции с ними, в т.ч. и для ClickHouse.
* [Что не так с ClickHouse: 10 главных недостатков](https://medium.com/@bigdataschool/что-не-так-с-clickhouse-10-главных-недостатков-6f06b0b0197f) - не все же идеально. Некотормые моменты уже не так актуальны, но почитать полезно.

Еще больше материалов можно найти на [Habr.com](https://habr.com/ru/search/?q=Clickhouse&target_type=posts&flow=&order_by=relevance).

## Отказ от ответственности

Все содержимое репозитория предоставляется "AS-IS". Автор не несет ответственности за использование предоставленного материала.

## Другое

ClickHouse - потрясающая СУБД для OLAP. Для других целей лучше использовать и другие инструменты:

* [Microsoft SQL Server](https://github.com/YPermitin/SQLServerTools)
* [PostgreSQL](https://github.com/YPermitin/PGTools)

Всему свое назначение.
