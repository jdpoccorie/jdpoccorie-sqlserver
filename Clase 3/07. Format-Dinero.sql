-- Se le pide implementar el formato a monedas de variables numéricas
-- 1250 => S/ 1,250.00; 12345.6789 => 12,345.68
--		=> S/. 1250.00; 12345.6789=> $ 12345.68

declare @sol int
declare @dolar decimal(18,6);

set @sol = 1250;
set @dolar = 12345.6789;

select @sol,
	   FORMAT(@sol, 'S/ #,0.00'), -- format agrega 0's para completar
	   FORMAT(@sol, 'S/ #0.00'),
	   'S/ '+FORMAT(@sol, '#0.00');

select @dolar,
	   FORMAT(@dolar, '$ #,0.00'), -- format redondea los decimales
	   FORMAT(@dolar, '$ #0.00'), -- no hace truncamiento
	   '$ '+FORMAT(@dolar, '#0.00'); -- el redondeo lo hace al nro de decimales indicado

SELECT
	123456789.0123456,
	FORMAT(123456789.0123456, '#,0.0000') -- soprta el nro de decimales que le indiquen

SELECT
	FORMAT(@dolar, 'c3'), -- 'c' indica moneda, el nro indica cantidad de decimales
	FORMAT(@dolar, 'c4'), -- El simbolo de moneda lo obtine de la configuracion regional
	FORMAT(@dolar, 'c2'),
	FORMAT(@dolar, 'c4', 'es-PE'),
	FORMAT(@dolar, 'c4', 'en-US'),
	FORMAT(@dolar, 'c4', 'es-US'),
	FORMAT(@dolar, 'c4', 'jp-JP')