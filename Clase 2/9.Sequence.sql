CREATE SEQUENCE dbo.SqSubCategoriaLvl2
AS INT
START WITH 1
INCREMENT BY 1;

DROP SEQUENCE dbo.SqSubCategoriaLvl2

-- haciendo uso, para ver que es similar a AUTO_INCREMENT
-- Su uso es mas que todo para migracion de bases de datos
insert into TablaDePrueba (TablaDePruebaId, Nombre)
	   values(next value for dbo.SqSubCategoriaLvl2, 'Tortas');

insert into TablaDePrueba (TablaDePruebaId, Nombre)
	   values(next value for dbo.SqSubCategoriaLvl2, 'Tortas');