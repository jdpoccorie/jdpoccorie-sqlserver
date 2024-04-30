-- Implementar la gestion de errores en un procedimiento almacenado,
-- Forzar una división por 0 en un procedure para pruebas
CREATE OR ALTER PROCEDURE UpErroresInsert
AS
-- EXEC UpErroresInsert
BEGIN
SET NOCOUNT ON;
	declare @a int
	declare @b int
	declare @c int

	declare @ErrorNum int
	declare @ErrorProcedure varchar(250)
	declare @ErrorMessage nvarchar(max)

	set @a = 1
	set @b = 0

	begin try
		set @c = @a / @b
	end try
	begin catch
		set @ErrorNum = ERROR_NUMBER()
		set @ErrorProcedure = ERROR_PROCEDURE()
		set @ErrorMessage = ERROR_MESSAGE()

		INSERT INTO dbo.Errores(ErrorNum, ErrorProcedure, ErrorMessage)
		VALUES (@ErrorNum, @ErrorProcedure, @ErrorMessage)
	end catch
END

-- select * from Errores