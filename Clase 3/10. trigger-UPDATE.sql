CREATE OR ALTER TRIGGER trCompa�iasDeEnviosUpdate
on [dbo].[compa�iasdeenvios]
after update
as
begin
set nocount on;
	insert into [dbo].[Compa��asDeEnviosAudit]
	([IdCompa��aEnv�os],[NombreCompa��a],[Tel�fono],[Evento],[FechaHora])
	select idCompa�iaEnvios, nombreCompa�ia, telefono, 'UPDATE', SYSDATETIME()
	from inserted
end

-- SELECT * FROM [dbo].[Compa��asDeEnviosAudit]