CREATE DATABASE IF NOT EXISTS lesson2; 	-- Создаем БД с именем lesson2, если она не была создана

USE lesson2; -- Подключаемся к конкретной БД

-- 2. Создание таблицы
-- Создаем таблицу "sales"
CREATE TABLE IF NOT EXISTS sales (
  id SERIAL PRIMARY KEY, -- столбец id заполняется автоматически
  order_date DATE,
  count_product INT
);

-- Заполняем таблицу данными
INSERT INTO sales (order_date, count_product)
VALUES 
  ('2022-01-01', 50),
  ('2022-01-02', 120),
  ('2022-01-03', 250),
  ('2022-01-04', 400),
  ('2022-01-05', 80),
  ('2022-01-06', 220),
  ('2022-01-07', 350),
  ('2022-01-08', 150),
  ('2022-01-09', 70),
  ('2022-01-10', 420);
  
-- Группировка значений количества в 3 сегмента
SELECT 
  CASE 
    WHEN count_product < 100 THEN 'меньше 100'
    WHEN count_product BETWEEN 100 AND 300 THEN '100-300'
    ELSE 'больше 300'
  END AS count_segment,
  COUNT(*) AS count_orders
FROM sales
GROUP BY count_segment;