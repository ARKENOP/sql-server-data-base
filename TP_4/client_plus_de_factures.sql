USE TP_4_SELECT
GO 

SELECT TOP 1
    [client].[id] AS ClientID,
    [client].[nom] AS NomClient,
    COUNT([facture].[id]) AS NombreDeFactures
FROM
    [client]
    INNER JOIN [projet] ON [client].[id] = [projet].[client_id]
    INNER JOIN [devis] ON [projet].[id] = [devis].[projet_id]
    INNER JOIN [facture] ON [devis].[id] = [facture].[devis_id]
GROUP BY
    [client].[id], [client].[nom]
ORDER BY
    NombreDeFactures DESC;