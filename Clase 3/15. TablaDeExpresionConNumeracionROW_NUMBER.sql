-- lISTAR LAS VENTAS POR CLIENTE, AGREGAR UNA COLUMNA DE NUMERACION
WITH CTE(
idCliente,NombreCompaņia,MontoVentas
)
AS
(
SELECT 
	clientes.idCliente,
	clientes.NombreCompaņia,
	sum(Cargo) as MontoVentas
FROM Pedidos inner join clientes on Pedidos.IdCliente = clientes.idCliente
group by clientes.idCliente, clientes.NombreCompaņia
)
SELECT ROW_NUMBER() OVER (ORDER BY idCliente),NombreCompaņia,MontoVentas FROM CTE