CREATE TABLE [dbo].[CompañíasDeEnviosAudit](
	IdCompañíaEnvíos int NOT NULL,
	NombreCompañía nvarchar(40) not null,
	Teléfono nvarchar(24) null,
	Evento varchar(50),
	FechaHora datetime2(7)
) on [primary]