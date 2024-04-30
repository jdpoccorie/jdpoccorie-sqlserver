-- Implementar una función que devuelva el año actual
CREATE OR ALTER FUNCTION dbo.FnAñoActual()
RETURNS INT
AS
-- SELECT dbo.FnAñoActual()
BEGIN
	RETURN YEAR(GETDATE())
END
