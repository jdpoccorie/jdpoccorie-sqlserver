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

	IF @DNI is not null
	BEGIN
		set @mensaje = @DNI
	END
	ELSE IF @codEstudiante is not null
	begin
		set @mensaje = @codEstudiante
	end
	ELSE IF @nroMatricula is not null
	begin
		set @mensaje = @nroMatricula
	end
	else
		set @mensaje = 'DOCUMENTO SIN VERIFICAR'

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
	select dbo.fnVerificaDocumento(@DNI, @codEstudiante, @nroMatricula) as Documento
end