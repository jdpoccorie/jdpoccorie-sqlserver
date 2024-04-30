-- Elaborar un reporte de lista de productos, si las unidades en existencia son menor al stock, mostrar COMPRAR URGENTE
-- de los contrario mostrar STOCK ADECUADO 


declare @IdProducto           int
declare @NombreProducto       nvarchar(40)
declare @UnidadesEnExistencia int
declare @UnidadesEnPedido     int

declare CrProductos cursor for
Select IdProducto, NombreProducto,UnidadesEnExistencia, UnidadesEnPedido from dbo.Productos

Open CrProductos
fetch next from CrProductos
into @IdProducto,@NombreProducto,@UnidadesEnExistencia,@UnidadesEnPedido

while @@FETCH_STATUS=0
begin
    if(@UnidadesEnExistencia<@UnidadesEnPedido)
	begin
	    Select @NombreProducto+': COMPRAR URGENTE'
	end
	else
	begin
	    Select @NombreProducto+': STOCK ADECUADO'
	end

fetch next from CrProductos
into @IdProducto,@NombreProducto,@UnidadesEnExistencia,@UnidadesEnPedido
end

CLOSE CrProductos
deallocate CrProductos