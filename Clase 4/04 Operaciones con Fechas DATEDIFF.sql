-- '2015-08-25', '2023-10-29': tiempo transcurrido
-- Expresarlo en d�as, semanas, meses, trimestres, a�os.

SELECT 
	'2015-08-25',
	'2023-10-30',
	DATEDIFF(DAY, '2015-08-25', '2023-10-30') AS 'NRO DE D�AS',
	DATEDIFF(WEEK, '2015-08-25', '2023-10-30') AS 'NRO DE SEMANAS',
	DATEDIFF(MONTH, '2015-08-25', '2023-10-30') AS 'NRO DE MESES',
	DATEDIFF(QUARTER, '2015-08-25', '2023-10-30') AS 'NRO DE TRIMESTRES',
	DATEDIFF(YEAR, '2015-08-25', '2023-10-30') AS 'NRO DE A�OS'


-- '2023-10-29T10:10:10', '2023-08-25T20:20:20',
-- EXPRESAR LA DIFERENCIA ENTRE HORAS, MINUTOS Y SEGUNDOS
SELECT
	'2023-10-29T10:10:10',
	'2023-08-25T20:20:20',
	DATEDIFF(HOUR, '2023-08-25T20:20:20', '2023-10-29T10:10:10') AS HORAS,
	DATEDIFF(MINUTE, '2023-08-25T20:20:20', '2023-10-29T10:10:10') AS MINUTOS,
	DATEDIFF(SECOND, '2023-08-25T20:20:20', '2023-10-29T10:10:10') AS SEGUNDOS