-- 1. Створюємо користувача 'app_backend'
CREATE USER 'app_backend'@'localhost' IDENTIFIED BY 'pass_secure_456';

-- 2. Дозволяємо ТІЛЬКИ ЧИТАТИ товари, категорії та користувачів
-- (щоб показувати їх на сайті)
GRANT SELECT ON Products TO 'app_backend'@'localhost';
GRANT SELECT ON Categories TO 'app_backend'@'localhost';
GRANT SELECT ON Users TO 'app_backend'@'localhost';

-- 3. Дозволяємо ЧИТАТИ ТА СТВОРЮВАТИ замовлення
-- (але не видаляти і не редагувати!)
GRANT SELECT, INSERT ON Orders TO 'app_backend'@'localhost';
GRANT SELECT, INSERT ON Order_Items TO 'app_backend'@'localhost';

-- 4. Застосовуємо зміни
FLUSH PRIVILEGES;