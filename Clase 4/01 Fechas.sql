-- Implementar la presentacion de fechas con los siguientes formatos:
-- 11/06/2023 3:13
-- 30-05-23 03:41:14.160
-- 11.02.23
-- 30/December/22 03:58:13.96
-- 3/12/2022 4:2:48 PM
-- 30/Dec/22 03:58:13.964574

Select 
	GETDATE(),
	FORMAT(GETDATE(), 'dd/MM/yyyy h:m'),
	FORMAT(GETDATE(), 'dd-MM-yy hh:mm:ss.fff'),
	FORMAT(GETDATE(), 'dd.MM.yy'),
	FORMAT(GETDATE(), 'dd/MMMM/yy hh:mm:ss.ff'),
	FORMAT(GETDATE(), 'd/MM/yyyy h:m:s tt'), -- GETDATE(): tiene la precisión de milisegundos
	FORMAT(SYSDATETIME(), 'dd/MMM/yy hh:mm:ss:ffffff') -- SYSDATETIME(): tiene la precisión de milisegundos