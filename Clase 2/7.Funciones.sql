-- Implementar una funci�n que devuelva el a�o actual
CREATE OR ALTER FUNCTION dbo.FnA�oActual()
RETURNS INT
AS
-- SELECT dbo.FnA�oActual()
BEGIN
	RETURN YEAR(GETDATE())
END
