USE TP_4_SELECT
GO

DECLARE @nom_client VARCHAR(255) = 'Accenture';

SELECT
    [client].[id] AS ClientID,
    [client].[nom] AS NomClient,
    SUM([facture].[total]) AS MontantTotalFacture
FROM
    [client]
    INNER JOIN [projet] ON [client].[id] = [projet].[client_id]
    INNER JOIN [devis] ON [projet].[id] = [devis].[projet_id]
    INNER JOIN [facture] ON [devis].[id] = [facture].[devis_id]
WHERE
    [client].[nom] = @nom_client
GROUP BY
    [client].[id], [client].[nom];