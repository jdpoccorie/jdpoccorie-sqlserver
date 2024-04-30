-- Se requiere una función que devuelva el nombre del día, para el número del día de semana
-- 1 => lunes
-- 2 => martes

CREATE OR ALTER FUNCTION dbo.FnNombreDia
(
	@Dia int
)
RETURNS NVARCHAR(MAX)
AS
-- SELECT dbo.FnNombreDia(7) AS [NOMBRE DIA]
BEGIN
	DECLARE @NombreDia nvarchar(max)
	IF @DIA = 1
	BEGIN
		SET @NombreDia = 'Lunes'
	END
	ELSE IF (@Dia = 2)
		SET @NombreDia = 'Martes'
	ELSE IF (@Dia = 3)
		SET @NombreDia = 'Miercoles'
	ELSE IF (@Dia = 4)
		SET @NombreDia = 'Jueves'
	ELSE IF (@Dia = 5)
		SET @NombreDia = 'Viernes'
	ELSE IF (@Dia = 6)
		SET @NombreDia = 'Sabado'
	ELSE IF (@Dia = 7)
		SET @NombreDia = 'Domingo'
	ELSE
		SET @NombreDia = 'No existe el día'
	
	RETURN @NombreDia
END
