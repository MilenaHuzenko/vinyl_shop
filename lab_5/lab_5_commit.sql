-- 1. Дивимося на ціну "ДО"
SELECT * FROM `Products` WHERE `id` = 11;

-- 2. Починаємо транзакцію
START TRANSACTION;

-- 3. Виконуємо нашу DML-операцію
UPDATE `Products`
SET `price` = 1250.00 -- Нова ціна
WHERE `id` = 11;

-- 4. Завершуємо транзакцію ТА ЗБЕРІГАЄМО ЗМІНИ
COMMIT;

-- 5. Дивимося на ціну "ПІСЛЯ"
SELECT * FROM `Products` WHERE `id` = 11;