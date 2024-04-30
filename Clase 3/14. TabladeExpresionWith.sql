-- Listar ventas de productos, se requiere ek numero de pedido 
CREATE OR ALTER PROCEDURE ListarEnProcedure
as
-- EXEC ListarEnProcedure
begin
set nocount on;
-- Listar las ventas de productos, se requiere el número de pedido y precio de venta
WITH cte ( -- tabla de expresión: Permite realizar consultas a scripts, sin modificarlos
	idpedido, nombreProducto, precioUnidad
)
as
(
select dp.idpedido, p.nombreProducto, p.precioUnidad
from detallesdepedidos dp
inner join productos p on dp.idproducto = p.idproducto
)
select 
	idpedido, nombreProducto, precioUnidad
from cte;
end