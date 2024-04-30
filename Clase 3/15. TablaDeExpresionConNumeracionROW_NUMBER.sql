-- lISTAR LAS VENTAS POR CLIENTE, AGREGAR UNA COLUMNA DE NUMERACION
WITH CTE(
idCliente,NombreCompa�ia,MontoVentas
)
AS
(
SELECT 
	clientes.idCliente,
	clientes.NombreCompa�ia,
	sum(Cargo) as MontoVentas
FROM Pedidos inner join clientes on Pedidos.IdCliente = clientes.idCliente
group by clientes.idCliente, clientes.NombreCompa�ia
)
SELECT ROW_NUMBER() OVER (ORDER BY idCliente),NombreCompa�ia,MontoVentas FROM CTE