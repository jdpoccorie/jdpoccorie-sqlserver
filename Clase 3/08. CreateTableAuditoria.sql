CREATE TABLE [dbo].[Compa��asDeEnviosAudit](
	IdCompa��aEnv�os int NOT NULL,
	NombreCompa��a nvarchar(40) not null,
	Tel�fono nvarchar(24) null,
	Evento varchar(50),
	FechaHora datetime2(7)
) on [primary]