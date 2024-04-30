-- Listar las ventas de los productos
-- se requiere el numero de pedido, codigo y nombre producto

SELECT
	pr.idproducto, pr.nombreProducto, dpe.idpedido
FROM detallesdepedidos dpe
INNER JOIN productos pr ON pr.idproducto = dpe.idproducto;
--___________________________________________________________

-- FORMA SIMILAR CON CROSS APPLY

SELECT
	pr.idproducto, pr.nombreProducto, dpe.idpedido
FROM detallesdepedidos dpe
CROSS APPLY(SELECT pr.idproducto, pr.nombreProducto FROM productos pr where pr.idproducto = dpe.idproducto) pr;