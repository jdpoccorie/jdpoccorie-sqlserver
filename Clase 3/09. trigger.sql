CREATE OR ALTER TRIGGER TrCompañíasDeEnvíosInsert
on [dbo].[compañiasdeenvios]
after insert
as
begin
	set nocount on;

	insert into [dbo].[CompañíasDeEnviosAudit]
	([IdCompañíaEnvíos],[NombreCompañía],[Teléfono],[Evento],[FechaHora])
	Select
	idCompañiaEnvios, nombreCompañia, telefono, 'INSERT', GETDATE()
	from inserted
end

-- insert into compañiasdeenvios (idCompañiaEnvios, nombreCompañia, telefono) values(12, 'yachay', '975678984')

-- select * from [dbo].[CompañíasDeEnviosAudit]