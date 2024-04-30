-- Se requiere listar los clientes de la ciudad de Londres, Madrid, Buenos Aires, Lisboa
SELECT * FROM clientes
WHERE Ciudad = 'Londres' 
   or Ciudad = 'Madrid'
   or Ciudad = 'Buenos Aires'
   or Ciudad = 'Lisboa'

SELECT * FROM clientes
WHERE Ciudad in ('Londres', 'Madrid', 'Buenos Aires', 'Lisboa')


-- Listar los clientes de las ciudades de Londres o Madrid
select * from clientes
Where Ciudad='Londres'
	or Ciudad='Madrid'

select * from clientes
Where Ciudad in ('Londres', 'Madrid');

select * from clientes
Where Ciudad not in ('Londres', 'Madrid');

-- Listar los clientes que tengan un asesor en su ciudad
SELECT * FROM clientes

SELECT * FROM Empleados

SELECT * FROM clientes
WHERE Ciudad IN (SELECT Ciudad FROM Empleados)

-- Listar las ciudades de los clientes 
select Ciudad from clientes
select distinct Ciudad from clientes


-- Listar las ciudades de los clientes ordenadas en modo alfabetico (sin repetidos)
select distinct Ciudad from clientes
order by Ciudad asc