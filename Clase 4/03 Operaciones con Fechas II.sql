-- Muestre los resultados de ventas, de las �ltimas 4 semanas, desde la presente fecha
declare @fecha date

set @fecha = GETDATE()

SELECT 
	DATEADD(WEEK, -4, @fecha) AS 'Fecha Inicial',
	@fecha as [Fecha Final]


-- PROYECCI�N DE VENTAS DEL 1ER TRIMESTRE DEL A�O 2024
declare @fecha2 date

set @fecha2 = CAST('2024-01-01' AS DATE)

SELECT
	@fecha2 'Fecha Inicial', -- `AS` para los alias no es obligatorio
	DATEADD(QUARTER, 1, @fecha2) [FECHA FINAL]

-- PROYECCI�N DE VENTAS DEL 2024
declare @fecha3 date

set @fecha3 = CAST('2024-01-01' AS DATE)

SELECT 
	@fecha3 as 'Fecha Inicial',
	DATEADD(YEAR, 1, @fecha3)