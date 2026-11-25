-- Перетворюємо дані користувача з id=1 на JSON-об'єкт
SELECT 
    JSON_OBJECT(
        'user_id', id,          -- Ключ 'user_id' : Значення з колонки id
        'full_name', name,      -- Ключ 'full_name' : Значення з колонки name
        'contact_email', email  -- Ключ 'contact_email' : Значення з колонки email
    ) AS user_json_data
FROM 
    Users
WHERE 
    id = 1;