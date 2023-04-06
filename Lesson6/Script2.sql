DROP DATABASE IF EXISTS lesson;
CREATE DATABASE lesson;
USE lesson; 

DELIMITER //
CREATE FUNCTION format_seconds(seconds INT)
RETURNS VARCHAR(50)
DETERMINISTIC

BEGIN
    DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE formatted_time VARCHAR(50);
    SET days = seconds DIV (24 * 3600);
    SET seconds = seconds MOD (24 * 3600);
    SET hours = seconds DIV 3600;
    SET seconds = seconds MOD 3600;
    SET minutes = seconds DIV 60;
    SET seconds = seconds MOD 60;
    
    SET formatted_time = CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', seconds, ' seconds');
    RETURN formatted_time;
END //

SELECT format_seconds(123456)