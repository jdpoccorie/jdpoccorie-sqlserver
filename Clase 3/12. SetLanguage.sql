-- Se le pide que los reportes muestren informaci�n de fecha en los principales idiomas

set language spanish
SELECT 
	FORMAT(GETDATE(), 'dddd'),
	FORMAT(GETDATE(), 'MMMM')

set language french
SELECT 
	FORMAT(GETDATE(), 'dddd'),
	FORMAT(GETDATE(), 'MMMM')