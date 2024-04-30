CREATE OR ALTER FUNCTION dbo.fnVerificaDocumento
(
	@DNI varchar(8),
	@codEstudiante varchar(6),
	@nroMatricula varchar(10)
)
RETURNS VARCHAR(50)
AS
-- select dbo.fnVerificaDocumento('70307919', null, null)
-- select dbo.fnVerificaDocumento(null, '144884', null)
-- select dbo.fnVerificaDocumento(null, null, 'ALUM-144884')
-- select dbo.fnVerificaDocumento(null, null, null)
begin
	declare @mensaje VARCHAR(100);

	-- SELECT COALESCE(@DNI, @codEstudiante, @nroMatricula, @mensaje) as Documento

	SET @mensaje = CASE
        WHEN @DNI IS NOT NULL THEN 'DNI: ' + @DNI
        WHEN @codEstudiante IS NOT NULL THEN 'Código de Estudiante: ' + @codEstudiante
        WHEN @nroMatricula IS NOT NULL THEN 'Número de Matrícula: ' + @nroMatricula
        ELSE 'DOCUMENTO SIN VERIFICAR'
    END;

	RETURN @mensaje
end

CREATE OR ALTER PROCEDURE EjecutarVerificarDoc
(
	@DNI varchar(8),
	@codEstudiante varchar(6),
	@nroMatricula varchar(10)
)
as
-- EXEC EjecutarVerificarDoc '70307919', null, null
begin
	set nocount on;
	select dbo.fnVerificaDocumento(@DNI, @codEstudiante, @nroMatricula) as Respuesta
end