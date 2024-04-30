CREATE OR ALTER PROCEDURE VerificaDocumento
(
	@DNI varchar(8),
	@codEstudiante varchar(6),
	@nroMatricula varchar(10)
)
AS
-- exec VerificaDocumento '70307919', null, null
-- exec VerificaDocumento null, '144884', null
-- exec VerificaDocumento null, null, 'ALUM-144884'
-- exec VerificaDocumento null, null, null
begin
	set nocount on;
	declare @mensaje VARCHAR(100);
	set @mensaje = 'DOCUMENTO SIN VERIFICAR'
	SELECT COALESCE(@DNI, @codEstudiante, @nroMatricula, @mensaje) as Documento
end