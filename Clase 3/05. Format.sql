-- Se pide una implementacion que de formato a un n�mero: 1234567,987654321
-- como telefono fijo, con y sin prefijo o m�vil
-- Fijo_ 123-4567; con prefijo (12) 345-6789; M�vil: 987-654-321

SELECT
	1234567,
	FORMAT(1234567,'###-####')

SELECT
	123456789,
	FORMAT(123456789, '(##) ###-####')