CREATE OR ALTER TRIGGER TrCompa��asDeEnv�osInsert
on [dbo].[compa�iasdeenvios]
after insert
as
begin
	set nocount on;

	insert into [dbo].[Compa��asDeEnviosAudit]
	([IdCompa��aEnv�os],[NombreCompa��a],[Tel�fono],[Evento],[FechaHora])
	Select
	idCompa�iaEnvios, nombreCompa�ia, telefono, 'INSERT', GETDATE()
	from inserted
end

-- insert into compa�iasdeenvios (idCompa�iaEnvios, nombreCompa�ia, telefono) values(12, 'yachay', '975678984')

-- select * from [dbo].[Compa��asDeEnviosAudit]