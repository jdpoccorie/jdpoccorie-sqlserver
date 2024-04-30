-- Le piden informacion de los clientes:
--	- 10 clientes con más pedidos y las cantidades
--  - 10 clientes con mayor monto de pedidos

-- Los parametros son fecha inicial y fecha final
-- Por optimizacion, le piden usar tablas temporales.
-- Crear el procedimiento almacenado

CREATE OR ALTER PROCEDURE UpClientesInformacion
(
	@FechaInicial DATETIME2(7),
	@FechaFinal DATETIME2(7)
)
AS
-- exec UpClientesInformacion '19500101', '20230101'
BEGIN
	SET NOCOUNT ON;

	CREATE TABLE #ClienteCantidad
	(
		id				int identity(1,1) not null primary key,
		idCliente		nvarchar(5),
		nombreCompania	nvarchar(50),
		Cantidad		int
	);

	CREATE TABLE #ClienteMonto
	(
		Id				int identity(1,1) NOT NULL PRIMARY KEY,
		idCliente		nvarchar(5),
		nombreCompania	nvarchar(50),
		Monto			decimal(18,6)
	);

	INSERT INTO #ClienteCantidad
	(idCliente, nombreCompania, Cantidad)
	SELECT TOP 10
		cli.idCliente,cli.NombreCompañia, count(pe.idpedido)
		FROM clientes cli
		INNER JOIN Pedidos pe on pe.IdCliente = cli.idCliente
		WHERE FechaPedido between @FechaInicial and @FechaFinal
		group by cli.idCliente, cli.NombreCompañia
		order by count(pe.idpedido) desc

	INSERT INTO #ClienteMonto
	(idCliente, nombreCompania, Monto)
	SELECT cli.idCliente, cli.NombreCompañia, sum(Cargo)
	FROM clientes cli
	INNER JOIN Pedidos pe ON pe.IdCliente = cli.idCliente
	where FechaPedido between @FechaInicial and @FechaFinal
	group by cli.idCliente, cli.NombreCompañia
	order by sum(Cargo) desc;

	select * from #ClienteCantidad;
	select * from #ClienteMonto;

END