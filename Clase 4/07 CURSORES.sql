-- Listar los productos del catalogo (IdProducto, NombreProducto)

-- SELECT idproducto, nombreProducto from productos

declare @idproducto int;
declare @nombreproducto nvarchar(max);

DECLARE CrProductos CURSOR FOR -- declaración del cursor
SELECT idproducto, nombreProducto FROM productos -- apunta a un query

OPEN CrProductos -- Abrir el cursor
FETCH NEXT FROM CrProductos -- Apuntar a la primera fila del resultado
INTO @idproducto, @nombreproducto

WHILE @@FETCH_STATUS = 0 -- Mientras halla datos/filas
BEGIN
	PRINT '@idproducto: ' + str(@idproducto) + ' @nombreproducto: ' + @nombreproducto
	FETCH NEXT FROM CrProductos
	INTO @idproducto, @nombreproducto
END

CLOSE CrProductos -- Cerrar el cursor
DEALLOCATE CrProductos -- liberar de memoria