use neptuno
go
-- Implementar una funci�n que devuelva el m�nimo de dos valores
-- M�nimo(8,6) -> 6
-- M�nimo(6,8) -> 6
-- M�nimo(8,8) -> 8
CREATE OR ALTER FUNCTION dbo.FnMinimo
(
	@a int,
	@b int
)
RETURNS INT
AS
-- SELECT dbo.FnMinimo(8,6)
BEGIN
	DECLARE @min int
	if(@a > @b)
		set @min = @b
	else
		set @min = @a

	return @min
END