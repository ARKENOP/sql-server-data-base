DECLARE @client_id INT = 4;

SELECT
    [facture].[id] AS FactureID,
    [facture].[reference] AS ReferenceFacture,
    [facture].[info] AS InfoFacture,
    [facture].[total] AS TotalFacture,
    [facture].[date_crea] AS DateCreationFacture,
    [facture].[date_paiement] AS DatePaiementFacture,
    [devis].[reference] AS ReferenceDevis,
    [devis].[version] AS VersionDevis,
    [projet].[nom] AS NomProjet,
    [client].[nom] AS NomClient
FROM
    [client]
    INNER JOIN [projet] ON [client].[id] = [projet].[client_id]
    INNER JOIN [devis] ON [projet].[id] = [devis].[projet_id]
    INNER JOIN [facture] ON [devis].[id] = [facture].[devis_id]
WHERE
    [client].[id] = @client_id;
