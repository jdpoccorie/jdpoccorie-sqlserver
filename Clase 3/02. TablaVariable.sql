-- Realizar el cálculo del detalle de las ventas, ordenados por producto, en un proceso en línea
-- Producto 1, Precio 1, Cantidad 1
-- Considerar que estamos en periodo de altas ventas, no debera penalizar la BBDD

declare @Producto table
(
	Id int identity(1, 1) not null primary key,
	IdProducto int,
	NombreProducto nvarchar(250) not null
);

declare @DetalleVentas table
(
	Id int identity(1, 1) not null primary key,
	IdProducto int,
	NombreProducto nvarchar(250) not null,
	precio decimal(18,6),
	cantidad int
);

declare @i int
declare @IdProducto int
declare @NombreProducto nvarchar(250)
declare @n int

insert into @Producto
(IdProducto, NombreProducto)
select IdProducto, NombreProducto from productos;

set @i = 1;
set @n = (Select count(*) from @Producto)


while(@i <= @n)
begin
	set @IdProducto = (Select IdProducto from @Producto where Id=@i);
	set @NombreProducto = (Select NombreProducto from @Producto where Id=@i)

	insert into @DetalleVentas (IdProducto, NombreProducto, precio, cantidad)
	Select @IdProducto, @NombreProducto, preciounidad, cantidad from [dbo].[detallesdepedidos] where idproducto = @IdProducto;

	set @i = @i + 1
end

select * from @DetalleVentas

select * from detallesdepedidos order by idproducto asc
