-- Se pide tres funciones que den formato a un n�mero,
-- como tel�fono fijo, con y sin prefijo o m�vil
-- Fijo: 1234567 => 123-4567

CREATE OR ALTER FUNCTION dbo.FnTelefonoFijo
(
	@Nro int
)
RETURNS CHAR(8)
AS
-- Select dbo.FnTelefonoFijo(1234567)
BEGIN
	DECLARE @TelefonoFijo CHAR(8)

	SET @TelefonoFijo=FORMAT(@Nro, '###-####');

	RETURN @TelefonoFijo;
END