-- Mostrar al usuario la semana de ofertas, del 15 de setiembre en adelante
-- 15-09-23

DECLARE @fecha DATE;

SET @fecha=CAST('2023-09-15' AS DATE)

SELECT @fecha as 'Fecha Inicial',
	   DATEADD(DAY, 15, @fecha) as 'Fecha Final'


-- Muestre los resultados de ventas de la última semana
select cast(getdate() as date) as 'Fecha Final',
	   DATEADD(DAY, -7, cast(getdate() as date)) AS 'FECHA INICIAL',
	   DATEADD(WEEK, -1, cast(getdate() as date)) AS 'FECHA INICIAL'
	   -- Si pone valores negativos, realiza una resta 

-- Muestre los resultados de ventas del útimo mes
select cast(@fecha as date) as 'Fecha Final',
	   DATEADD(MONTH, -1, cast(@fecha as date)) AS 'FECHA INICIAL'