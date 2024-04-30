CREATE OR ALTER TRIGGER trCompañiasDeEnviosUpdate
on [dbo].[compañiasdeenvios]
after update
as
begin
set nocount on;
	insert into [dbo].[CompañíasDeEnviosAudit]
	([IdCompañíaEnvíos],[NombreCompañía],[Teléfono],[Evento],[FechaHora])
	select idCompañiaEnvios, nombreCompañia, telefono, 'UPDATE', SYSDATETIME()
	from inserted
end

-- SELECT * FROM [dbo].[CompañíasDeEnviosAudit]