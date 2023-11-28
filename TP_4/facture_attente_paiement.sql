SELECT
    SUM([facture].[total]) AS MontantFacturesEnAttente
FROM
    [facture]
WHERE
    [facture].[date_paiement] IS NULL;