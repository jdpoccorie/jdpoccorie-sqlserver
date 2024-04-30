-- En el procedure de configuracion, el auditor le pide agregar transacciones y excepciones en el procedimiento
-- 'parametros.UpConfiguracionesSet'
CREATE OR ALTER PROCEDURE dbo.UpConfiguraciones3
(
	@ConfigKey nvarchar(250),
	@ConfigValue nvarchar(250)
)

AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @Resultados int;
	DECLARE @ErrorNumber int;
	DECLARE @ErrorProcedure varchar(200);
	DECLARE @ErrorMessage varchar(max);

	SET @Resultados = (SELECT count(*) from [dbo].[Configuraciones] where ConfigKey=@ConfigKey);

	BEGIN TRY
		BEGIN TRANSACTION
		IF(@Resultados = 0)
		BEGIN
			INSERT INTO [dbo].[Configuraciones]
			(ConfigKey, ConfigValue, FechaCreacion)
			VALUES
			(@ConfigKey, @ConfigValue, GETDATE())
		END
		ELSE
		BEGIN
			UPDATE dbo.Configuraciones
			SET ConfigValue=@ConfigValue,
			FechaModificacion=SYSDATETIME()
			WHERE ConfigKey=@ConfigKey;
		END
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SET @ErrorNumber = ERROR_NUMBER();
		SET @ErrorProcedure = ERROR_PROCEDURE();
		SET @ErrorMessage = ERROR_MESSAGE();

		ROLLBACK;
	END CATCH
END

-- EXEC dbo.UpConfiguraciones3 'RUC', '12345678901'
-- EXEC dbo.UpConfiguraciones3 'razon-social', 'tienda google'
-- SELECT * FROm Configuraciones