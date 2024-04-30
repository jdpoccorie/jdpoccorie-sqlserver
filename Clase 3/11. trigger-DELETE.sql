CREATE OR ALTER TRIGGER TrCompañiasDeEnviosDelete
on [dbo].[compañiasdeenvios]
AFTER DELETE
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO [dbo].[CompañíasDeEnviosAudit]
	([IdCompañíaEnvíos],[NombreCompañía],[Teléfono],[Evento],[FechaHora])
	select idCompañiaEnvios, nombreCompañia, telefono, 'DELETE', SYSDATETIME()
	from deleted
END