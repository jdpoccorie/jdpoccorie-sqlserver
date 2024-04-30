# Estructura de control condicional CASE WHEN SQL SERVER

**Condicional CASE WHEN**

CASE WHEN

Sintaxis

```
CASE <expresión>
  WHEN Condicion1 THEN resultado1
  WHEN Condicion2 THEN resultado2
  ...
  WHEN CondicionN THEN resultadoN
  ELSE Resultado
END;
```

Ejemplo
```sql
use PruebaDB

declare 
  @var varchar(15), 
  @mostrar varchar(30)

set @var = 'ROL'
set @mostrar = (
  CASE @var 
    WHEN 'rol' THEN 'RODIGO ONLINE ROL'
    WHEN 'SQL' THEN 'Curso de SQL Transact' 
  END
)

PRINT @mostrar -- RODIGO ONLINE ROL
```

```sql
use PruebaDB

declare 
  @var varchar(15), 
  @mostrar varchar(30)

set @var = 'TRES'
set @mostrar = (
  CASE @var 
    WHEN 'rol' THEN 'RODIGO ONLINE ROL'
    WHEN 'SQL' THEN 'Curso de SQL Transact'
    ELSE 'No es Válido' 
  END
)

PRINT @mostrar -- No es Válido
```

Otro Ejemplo:

En primer lugar crearemos una base de datos de prueba:
```sql
CREATE DATABASE PruebaDB
USE PruebaDB
CREATE TABLE Sucursal (
    Id_Sucursal nvarchar(36) PRIMARY KEY,
    Nombre nvarchar(36),
    Descripcion nvarchar(36),
    Serie nvarchar(36),
    Direccion nvarchar(36),
    Estado bit
);
SELECT * FROM Sucursal
INSERT INTO Sucursal (Id_Sucursal, Nombre, Descripcion, Serie, Direccion, Estado)
VALUES
    ('CUSCO', 'Sucursal Cusco', 'Sucursal en Cusco, Perú', 'CS001', 'Calle Cusco 123', 1),
    ('LIMA', 'Sucursal Lima', 'Sucursal en Lima, Perú', 'LI001', 'Avenida Lima 456', 1),
    ('BOGOTA', 'Sucursal Bogotá', 'Sucursal en Bogotá, Colombia', 'BO001', 'Carrera Bogotá 789', 1),
    ('QUITO', 'Sucursal Quito', 'Sucursal en Quito, Ecuador', 'QT001', 'Avenida Quito 101', 1),
    ('AREQUIPA', 'Sucursal Arequipa', 'Sucursal en Arequipa, Perú', 'AR001', 'Plaza Arequipa 202', 0),
    ('TACNA', 'Sucursal Tacna', 'Sucursal en Tacna, Perú', 'TA001', 'Jirón Tacna 303', 0),
    ('IQUIQUE', 'Sucursal Iquique', 'Sucursal en Iquique, Chile', 'IQ001', 'Calle Iquique 404', 1),
    ('MONTEVIDEO', 'Sucursal Montevideo', 'Sucursal en Montevideo, Uruguay', 'MV001', 'Rambla Montevideo 505', 1),
    ('BRASILIA', 'Sucursal Brasilia', 'Sucursal en Brasilia, Brasil', 'BR001', 'Avenida Brasilia 606', 1),
    ('SANTIAGO', 'Sucursal Santiago', 'Sucursal en Santiago, Chile', 'SA001', 'Carrera Santiago 707', 1);
```

Ahora si continuando con el ejemplo:
```sql
SELECT CASE Estado WHEN 0 THEN 'NO HABILITADO' FROM Sucursal

```





