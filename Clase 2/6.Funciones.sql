-- Implementar la función porcentaje, que devuelva el % del monto
-- Select dbo.FnPorcentaje(50,10), devuelve 5

USE neptuno
GO
CREATE OR ALTER FUNCTION dbo.FnPorcentaje
(
	@monto DECIMAL(18,6),
	@porcentaje DECIMAL(18,6)
)
RETURNS DECIMAL(18, 6)
AS
-- SELECT dbo.FnPorcentaje(50,10)
BEGIN
	DECLARE @resultado DECIMAL(18,6)

	set @resultado = (@monto)*(@porcentaje)/100

	return @resultado
END