use neptuno;
GO

-- PROCEDIMIENTO ALMACENADO - PAGINACI�N

-- Implementar la b�squeda de productos por coincidencia en el
-- nombre, que permita ordenar por nombre o categor�a *(asc y desc),
-- en grupos de 10 (o los que indique el usuario), y
-- y que permita el recorrido tipo p�gina
CREATE OR ALTER PROCEDURE dbo.UpProductoPaginacion
(
	@nombreProducto NVARCHAR(100),
	@tama�oPagina   INT,
	@nroPagina      INT,
	@nombreColumna  NVARCHAR(250),
	@orderBy        BIT
)
AS
-- EXEC dbo.UpProductoPaginacion 'pan', 4, 2, 'nombreProducto', 1
BEGIN
SET NOCOUNT ON;
	SELECT
		p.idproducto, p.nombreProducto, c.nombrecategoria,
		COUNT(*) OVER() AS TotalResultados
	FROM dbo.productos p
	INNER JOIN dbo.categorias c on c.idcategoria = p.idCategoria
	WHERE p.nombreProducto like '%'+@nombreProducto+'%'
	ORDER BY
		CASE WHEN @nombreColumna = 'nombreProducto' and @orderBy=1 THEN p.nombreProducto END ASC,
		CASE WHEN @nombreColumna = 'nombreProducto' and @orderBy=0 THEN p.nombreProducto END DESC,
		CASE WHEN @nombreColumna = 'nombreProducto' and @orderBy IS NULL THEN p.nombreProducto end,

		CASE WHEN @nombreColumna = 'nombrecategoria' and @orderBy=1 THEN c.nombrecategoria END ASC,
		CASE WHEN @nombreColumna = 'nombrecategoria' and @orderBy=0 THEN c.nombrecategoria END DESC,
		CASE WHEN @nombreColumna = 'nombrecategoria' and @orderBy IS NULL THEN c.nombrecategoria end

		OFFSET (@nroPagina-1)*@tama�oPagina ROWS
		FETCH NEXT @tama�oPagina ROWS ONLY;
END
