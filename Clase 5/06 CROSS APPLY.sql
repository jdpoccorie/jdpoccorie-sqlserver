--Listar las ventas de productos, se requiere el numero de pedido, codigo y nombre de producto
select de.idpedido,
pro.idproducto,
pro.nombreproducto
from [detallesdepedidos] de
inner join productos pro on pro.idproducto = de.idproducto

select
	de.idpedido,
	pro.idproducto,
	pro.nombreproducto
from detallesdepedidos de -- cross apply<> inner join a una subconsulta
cross apply (select pro.idproducto, pro.nombreproducto
				from productos pro where pro.idproducto = de.idproducto) pro
