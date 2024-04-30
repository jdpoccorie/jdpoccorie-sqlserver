CREATE OR ALTER PROCEDURE CalcularVentasPorPais
AS
-- exec CalcularVentasPorPais
BEGIN
    DECLARE @Pais NVARCHAR(50)
    DECLARE @MontoVentas MONEY

    DECLARE PaisCursor CURSOR FOR
    SELECT DISTINCT PaisDestinatario
    FROM Pedidos

    OPEN PaisCursor

    FETCH NEXT FROM PaisCursor INTO @Pais

    WHILE @@FETCH_STATUS = 0
    BEGIN
        SET @MontoVentas = 0

        -- Calcular el monto de ventas para el país actual
        SELECT @MontoVentas = @MontoVentas + (preciounidad * Cantidad - descuento)
        FROM detallesdepedidos dpe
		inner join Pedidos pe on dpe.idpedido = pe.IdPedido
		where PaisDestinatario = @Pais

        PRINT 'Monto de ventas para ' + @Pais + ': ' + CAST(@MontoVentas AS NVARCHAR(20))

        FETCH NEXT FROM PaisCursor INTO @Pais
    END

    CLOSE PaisCursor
    DEALLOCATE PaisCursor
END