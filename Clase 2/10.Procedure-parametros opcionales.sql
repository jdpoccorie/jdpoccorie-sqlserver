-- Se requiere un procedimiento que sirva de origen de datos para un reporte de clientes
-- Debe mostrar todos los datos del cliente, permitira ordenar cualquiera de sus columnas
-- debe buscar por nombre o codigo
use neptuno
go

CREATE OR ALTER PROC dbo.UpClientesPaginacion
(
	@codigo nvarchar(40),
	@nombre nvarchar(40),
	@tamPagina int,
	@nroPagina int,
	@nombreCol varchar(200),
	@orden bit
)
AS
-- EXEC dbo.UpClientesPaginacion null, 'and', 10, 1, 
BEGIN
SET NOCOUNT ON;
	SELECT
		[idCliente],[NombreCompañia],[NombreContacto],[CargoContacto],[Direccion],[Ciudad],[Region],[CodPostal],[Pais],[Telefono],[Fax],
		count(*) over() as TotalResultados
	FROM dbo.clientes
	WHERE (@codigo is null or idCliente like '%'+@codigo+'%')
	  and (@nombre is null or NombreCompañia like '%'+@nombre+'%')
	ORDER BY
		CASE WHEN @nombreCol='IdCliente' and @orden=1 then idCliente end asc,
		CASE WHEN @nombreCol='IdCliente' and @orden=0 then idCliente end desc,
		CASE WHEN @nombreCol='IdCliente' and @orden is null then idCliente end,

		CASE WHEN @nombreCol='NombreCompania' and @orden=1 then NombreCompañia end asc,
		CASE WHEN @nombreCol='NombreCompania' and @orden=0 then NombreCompañia end desc,
		CASE WHEN @nombreCol='NombreCompania' and @orden is null then NombreCompañia end

		offset (@nroPagina-1)*@tamPagina rows
		fetch next @tamPagina rows only;
END
