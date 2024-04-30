/*
1.2.	Presentar las fechas y números con los siguientes formatos (5 puntos):

Fechas:
Lima, Wed 16/Nov/22 19:54:24.382
Callao, Miercoles 16/Noviembre/22 19:54:24.382
Siendo el miércoles 16 de Noviembre de 2022, 19 horas 54 minutos.

Monedas:
S/ 123,45
S/ 1,234.567
*/
SET LANGUAGE 'Spanish';
SELECT
	GETDATE(),
	FORMAT(GETDATE(), 'Callao, dddd dd/MMMM/yy HH:mm:ss.fff') AS TextoFormat,
	FORMAT(GETDATE(), 'Sien\do el dddd d \de MMMM \de yyyy, HH \hora\s mm \minu\to\s') AS TextoFormat;

SET LANGUAGE 'English';
SELECT
	GETDATE(),
	FORMAT(GETDATE(), 'Li\ma, ddd dd/MMM/yy HH:mm:ss.fff')

-- MONEDAS
SELECT
    FORMAT(123.45, 'S/ #,0.00'),
	FORMAT(123.45, 'c2', 'es-PE')

SELECT
	FORMAT(1234.567, 'S/ #,0.000'),
	'S/ '+FORMAT(1234.567, '#,0.000');