CREATE DATABASE IF NOT EXISTS lesson2; 	-- Создаем БД с именем lesson2, если она не была создана

USE lesson2; -- Подключаемся к конкретной БД

-- 2. Создание таблицы
CREATE TABLE IF NOT EXISTS orders (
    id SERIAL PRIMARY KEY,
    employee_id VARCHAR(10),
    amount FLOAT,
    order_status VARCHAR(20)
);

-- Заполняем таблицу данными
INSERT INTO orders (employee_id, amount, order_status)
VALUES 
    ('e02', 50.00, 'OPEN'),
    ('e06', 100.00, 'CLOSED'),
    ('e08', 75.00, 'CANCELLED'),
    ('e02', 25.00, 'OPEN'),
    ('e05', 150.00, 'CLOSED');

-- сортировка значений
SELECT *,
    IF(order_status = 'OPEN', 'Order is in open state', 
       IF(order_status = 'CLOSED', 'Order is closed', 
          IF(order_status = 'CANCELLED', 'Order is cancelled', NULL))) AS full_order_status
FROM orders
