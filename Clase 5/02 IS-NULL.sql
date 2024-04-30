-- Los procedimientos almacenados estan devolviendo valores null, según corresponde con los datos
-- Sin embargo, el servicio SOAP no gestiona valores NULL, le piden devolver 0 en valores numéricos
-- Los datos a leer son IGV, ISC, MontoVenta

SELECT 10 AS Monto, 1.8 AS IGV, 3 as ISC
SELECT NULL AS Monto, NULL AS IGV, NULL AS ISC;

SELECT ISNULL(NULL, 0) AS Monto, ISNULL(NULL, 0) AS IGV, ISNULL(NULL, 0) AS ISC;