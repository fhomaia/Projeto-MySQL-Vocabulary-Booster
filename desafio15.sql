DROP PROCEDURE IF EXISTS buscar_media_por_cargo;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN TITLE VARCHAR(300))
BEGIN
SELECT ROUND(AVG(e.SALARY), 2) AS `Média salarial` FROM hr.employees e
INNER JOIN hr.jobs j ON j.JOB_ID = e.JOB_ID
WHERE j.JOB_TITLE = TITLE;
END $$
DELIMITER ;
