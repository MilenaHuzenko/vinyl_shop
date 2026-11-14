-- ПОЧАТОК ТРАНЗАКЦІЇ
START TRANSACTION;

-- КРОК 1: Створюємо саме замовлення (для користувача з id=1)
INSERT INTO `Orders` (`user_id`, `status`) 
VALUES (1, 'pending');

-- Зберігаємо ID щойно створеного замовлення у змінну,
-- щоб використати його на наступному кроці
SET @new_order_id = LAST_INSERT_ID();

-- КРОК 2: Додаємо товар у це замовлення
-- (Припустимо, купуємо товар з id=1, кількість=2 шт, ціна=1300.00)
INSERT INTO `Order_Items` (`order_id`, `product_id`, `quantity`, `price_at_purchase`)
VALUES (@new_order_id, 1, 2, 1300.00);

-- КРОК 3: Оновлюємо склад (списуємо 2 одиниці товару id=1)
UPDATE `Products`
SET `stock_quantity` = `stock_quantity` - 2
WHERE `id` = 1;

-- Якщо все пройшло без помилок - зберігаємо зміни
COMMIT;