-- Un sistema contable requiere los datos de los proveedores
-- si el proveedor tiene RUC, mostrarlo; sino mostrar el DNI,
-- sino un mensaje 'Sin Documento'

DECLARE @RUC CHAR(11);
DECLARE @DNI CHAR(8);
DECLARE @SINDOC VARCHAR(25);

SET @SINDOC = 'SIN DOCUMENTO'

----
SET @RUC = '12345678901'
SET @DNI = '12345678'

SELECT COALESCE(@RUC, @DNI, @SINDOC)

----
SET @RUC = '12345678901'
SET @DNI = NULL
SELECT COALESCE(@RUC, @DNI, @SINDOC)
----
SET @RUC = NULL
SET @DNI = '12345678'
SELECT COALESCE(@RUC, @DNI, @SINDOC)
----
SET @RUC = NULL
SET @DNI = NULL
SELECT COALESCE(@RUC, @DNI, @SINDOC)