SELECT 
    JSON_OBJECT(
        'client_name', u.name,
        'client_email', u.email,
        'orders_history', CONCAT('[', 
            GROUP_CONCAT(
                JSON_OBJECT(
                    'order_id', o.id,
                    'status', o.status,
                    'date', o.created_at
                )
            ), 
        ']')
    ) AS client_full_data
FROM 
    Users AS u
JOIN 
    Orders AS o ON u.id = o.user_id
WHERE 
    u.id = 1
GROUP BY 
    u.id;