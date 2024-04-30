CREATE OR ALTER TRIGGER TrCompa�iasDeEnviosDelete
on [dbo].[compa�iasdeenvios]
AFTER DELETE
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO [dbo].[Compa��asDeEnviosAudit]
	([IdCompa��aEnv�os],[NombreCompa��a],[Tel�fono],[Evento],[FechaHora])
	select idCompa�iaEnvios, nombreCompa�ia, telefono, 'DELETE', SYSDATETIME()
	from deleted
END