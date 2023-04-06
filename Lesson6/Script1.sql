
DROP PROCEDURE IF EXISTS print_numbers;
DELIMITER //
CREATE PROCEDURE print_numbers
(
	IN input_numbers INT -- N 
)
BEGIN
	DECLARE n INT;
    DECLARE result VARCHAR(45) DEFAULT "";
    SET n = input_numbers;

	REPEAT
		SET result = CONCAT(result, n, ",");
        SET n = n + 2;
        UNTIL n > 10 -- Условие выхода из цикла: когда n - отрицательное или равно 0
	END REPEAT;
	SELECT result;
END //

CALL print_numbers(0);