-- Listar el monto de las ventas de los empleados en un rango de fechas (fecha inicial, fecha final, son opcionales)
-- incluir el numero de pedidos
-- incluir el promedio, mayor menor monto de ventas
-- debera incluir aquierllos empleados que cumplan un monto de ventas minimo, enviado por parametro
-- ordenado de menor a mayor monto de ventas
USE neptuno;
GO
CREATE OR ALTER PROCEDURE dbo.UpEmpleadosVentas2
(
	@fechaInicial date,
	@fechaFinal date,
	@montoMinimo decimal(18, 0)
)
AS
-- EXEC UpEmpleadosVentas '1994-07-01T00:00:00.000', '1994-08-31T23:59:59.997', 100 --Cuando se trabaja con datetime
-- EXEC UpEmpleadosVentas '1994-07-01', '1994-08-31', 100 --Cuando se trabaja con date
-- EXEC dbo.UpEmpleadosVentas2 null, null, 0 --Cuando se trabaja con date
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
	WHERE (FechaPedido >= @fechaInicial or @fechaInicial is null) 
      AND (FechaPedido <= @fechaFinal or @fechaFinal is null)
	GROUP BY IdEmpleado
	HAVING SUM(Cargo) >= @montoMinimo
	ORDER BY SUM(Cargo) ASC
END

