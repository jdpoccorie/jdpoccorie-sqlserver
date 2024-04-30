declare @Moneda1 decimal(18,6)
declare @Moneda2 decimal(18,6)
declare @Moneda3 decimal(18,6)

set @Moneda1 = 123.456
set @Moneda2 = 123.456789
set @Moneda3 = 12345.678901

select convert(decimal(18,2), @Moneda1) -- Si tiene mas decimales, redondea
select convert(decimal(18,4), @Moneda2) -- Si tiene mas decimales, redondea

select convert(int, @Moneda3)--Si tiene parte decimal, la trunca
select convert(datetime, '2023-10-15') -- La parte tiempo que no se especifica, la complementa con 0s
select convert(datetime2, '2023-10-15T00:25:45') -- La parte tiempo que no se especifica, la complementa con 0s