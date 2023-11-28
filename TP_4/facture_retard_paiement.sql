SELECT
    SUM([facture].[total]) AS MontantFacturesEnRetard
FROM
    [facture]
WHERE
    [facture].[date_paiement] IS NOT NULL
    AND [facture].[date_paiement] < GETDATE();