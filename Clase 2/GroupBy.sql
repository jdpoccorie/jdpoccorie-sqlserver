USE neptuno;
GO
-- Listar el monto de las ventas de los empleados en un rango de fechas
-- Incluir número de pedidos
-- Incluir el promedio, mayor y menor monto de ventas
-- Deberá incluir aquellos empleados que cumplan con monto de ventas mínimo
CREATE OR ALTER PROCEDURE dbo.UpEmpleadosVentas
(
	@fechaInicial date,
	@fechaFinal date,
	@montoMinimo decimal(18, 0)
)
AS
-- EXEC UpEmpleadosVentas '1994-07-01T00:00:00.000', '1994-08-31T23:59:59.997', null --Cuando se trabaja con datetime
-- EXEC UpEmpleadosVentas '1994-07-01', '1994-08-31', 100 --Cuando se trabaja con date
BEGIN
SET NOCOUNT ON;
	SELECT
		IdEmpleado,
		SUM(Cargo) AS [Monto Total],
		COUNT(IdPedido) AS [Numero de Pedidos],
		MIN(Cargo) AS [Venta Mínima],
		MAX(Cargo) AS [Venta Máxima],
		AVG(Cargo) AS [Promedio Ventas]
	FROM dbo.Pedidos
	WHERE FechaPedido >= @fechaInicial AND FechaPedido <= @fechaFinal
	GROUP BY IdEmpleado
	HAVING SUM(Cargo) >= @montoMinimo
END