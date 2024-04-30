CREATE OR ALTER PROCEDURE CalcularVentasPorPaisCTE
as
-- EXEC CalcularVentasPorPaisCTE
begin
set nocount on;
WITH cte (
	pais, TotalVentas
)
as
(
select distinct pe.PaisDestinatario, sum(dp.preciounidad * dp.cantidad - descuento) as TotalVentas
from detallesdepedidos dp
inner join Pedidos pe on dp.idpedido = pe.IdPedido
group by pe.PaisDestinatario
)
select 
	pais, TotalVentas
from cte order by pais;
end

