create table SubCategoriaId
(
	SubCategoriaId int identity(1,1) primary key not null,
	Nombre varchar(max) not null
)

insert into SubCategoriaId (Nombre) values ('Panaderia'),
										   ('Pescados')

GO;
create or alter procedure UpEliminarSubcategoriaId
-- SELECT * FROM SubCategoriaId
-- EXEC UpEliminarSubcategoriaId 3
(
	@SubCategoriaId int
)
as
begin
	BEGIN TRY
		BEGIN TRANSACTION
			DELETE FROM SubCategoriaId WHERE SubCategoriaId = @SubCategoriaId
			PRINT 'Eliminación exitosa'
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK
		PRINT 'Error al eliminar'
	END CATCH
	
end
