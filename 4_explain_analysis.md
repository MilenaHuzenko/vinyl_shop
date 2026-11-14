## 1. План виконання ДО створення індексу
-- Аналізуємо запит пошуку за ціною БЕЗ індексу
EXPLAIN SELECT * FROM `Products` WHERE `price` = 1300.00;
Результат:
* type: ALL (Full Table Scan - повне сканування таблиці)
* key: NULL (індекс не використовується)
* rows: перевіряються всі рядки таблиці по черзі

## 2. Створення індексу
-- Створюємо індекс для колонки ціни
CREATE INDEX `idx_products_price` ON `Products` (`price`);

## 3. План виконання ПІСЛЯ створення індексу
EXPLAIN SELECT * FROM `Products` WHERE `price` = 1300.00;
Результат:
* type: ref (пошук за індексом)
* key: idx_products_price (використано створений індекс)
* rows: менша кількість рядків для перевірки
