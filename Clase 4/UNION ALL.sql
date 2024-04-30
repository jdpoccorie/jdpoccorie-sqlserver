-- Listar los paises que tienen un asesor de venta o cliente
-- no omitir repetidos
SELECT Pais, Ciudad, CodPostal FROM clientes
UNION ALL
SELECT pais, ciudad, codPostal FROM Empleados
ORDER BY Pais, cIUDAD