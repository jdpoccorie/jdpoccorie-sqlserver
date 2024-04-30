-- Durante la importación de datos, a los campos de texto null los guardaron como texto vacío
-- se le carga corregir los datos
-- Ej.
-- 20215463451, Buffets mISTURA Marina,,1200 => 20215463451, Buffets Mistura Marina,NULL,1200

select '20215463451', 'Buffets Mistura Marina','',1200
select '20215463451', 'Buffets Mistura Marina',NULL,1200
select '20215463451', 'Buffets Mistura Marina',NULLIF('',''),1200 -- HIZO EL REEMPLAZO




-- Durante la importacion de datos, a los capos de tipo fecha se guardaron como primero de enero de mil novecientos
-- se le pide asignarle el valor correcto de null

-- 1900-01-01

DECLARE @FECHA DATE
SET @FECHA = '19000101'
IF @FECHA = '19000101'
BEGIN
	SELECT NULLIF('', '') AS FECHA
END
ELSE
BEGIN
	SELECT @FECHA AS FECHA
END


SELECT NULLIF(@FECHA, '19000101')
SET @FECHA = '20231105'
SELECT NULLIF(@FECHA, '19000101')
