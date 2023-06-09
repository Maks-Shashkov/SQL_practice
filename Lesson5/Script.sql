-- Удаляем БД, если она существует 
DROP DATABASE IF EXISTS lesson3;
-- Создаем БД lesson3, если ее раньше не было
CREATE DATABASE IF NOT EXISTS lesson3;

-- Выбираем конкретную БД
USE lesson3;

CREATE TABLE cars
(
  id INT NOT NULL PRIMARY KEY,
    name VARCHAR(45),
    cost INT
);

INSERT cars
VALUES
  (1, "Audi", 52642),
    (2, "Mercedes", 57127 ),
    (3, "Skoda", 9000 ),
    (4, "Volvo", 29000),
  (5, "Bentley", 350000),
    (6, "Citroen ", 21000 ), 
    (7, "Hummer", 41400), 
    (8, "Volkswagen ", 21600);
    
SELECT *
FROM cars;

CREATE VIEW cheap_cars AS
SELECT * 
FROM cars
WHERE cost <= 25000;

ALTER VIEW cheap_cars AS
SELECT * 
FROM cars
WHERE cost <= 30000;

CREATE VIEW skoda_audi_cars AS
SELECT * 
FROM cars
WHERE name IN ('Skoda', 'Audi');

SELECT * FROM cheap_cars;