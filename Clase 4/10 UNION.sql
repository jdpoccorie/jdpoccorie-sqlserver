-- Listar los paises, ciudades, cod. postal que tenga un cliente
-- Listar los paises, ciudades, cod. postal que tenga un asesor
-- Listar los paises, ciudades, cod. postal que tenga un cliente o un asesor


SELECT Pais, Ciudad, CodPostal FROM clientes


SELECT pais, ciudad, codPostal FROM Empleados


SELECT Pais, Ciudad, CodPostal FROM clientes
UNION
SELECT pais, ciudad, codPostal FROM Empleados