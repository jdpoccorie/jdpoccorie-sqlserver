-- lISTAR LAS VENTAS POR CLIENTE, AGREGAR UNA COLUMNA DE NUMERACION
WITH CTE(
idCliente,NombreCompañia,MontoVentas
)
AS
(
SELECT 
	clientes.idCliente,
	clientes.NombreCompañia,
	sum(Cargo) as MontoVentas
FROM Pedidos inner join clientes on Pedidos.IdCliente = clientes.idCliente
group by clientes.idCliente, clientes.NombreCompañia
)
SELECT ROW_NUMBER() OVER (ORDER BY idCliente),NombreCompañia,MontoVentas FROM CTE