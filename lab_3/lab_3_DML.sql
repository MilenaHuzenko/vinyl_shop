-- DML: Додавання нового користувача (User)
INSERT INTO `Users` (`name`, `email`, `password_hash`) VALUES
('Віктор Павленко', 'viktor.pavlenko@gmail.com', 'hash_xyz_9');

-- DML: Додавання нового товару (Product)
INSERT INTO `Products` (`name`, `description`, `price`, `stock_quantity`, `category_id`) VALUES
('The Beatles - Abbey Road', 'Культовий альбом 1969 року, ремастеринг на вінілі.', 1150.00, 14, 1);

-- DML: Оновлення ціни товару (Update)
UPDATE `Products` 
SET `price` = 8500.00 
WHERE `name` = 'Audio-Technica AT-LP60X';

-- DML: Видалення позиції з замовлення (Delete)
DELETE FROM `Order_Items` 
WHERE `order_id` = 2 AND `product_id` = 8;