use neptuno
go
-- Implementar una función que devuelva el mínimo de dos valores
-- Mínimo(8,6) -> 6
-- Mínimo(6,8) -> 6
-- Mínimo(8,8) -> 8
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