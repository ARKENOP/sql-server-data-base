USE TP_4_SELECT
GO 

INSERT INTO [client] ([nom]) VALUES ('Mairie de Rennes');
INSERT INTO [client] ([nom]) VALUES ('Neo Soft');
INSERT INTO [client] ([nom]) VALUES ('Sopra');
INSERT INTO [client] ([nom]) VALUES ('Accenture');
INSERT INTO [client] ([nom]) VALUES ('Amazon');

INSERT INTO [projet] ([client_id], [nom]) VALUES (1, 'Creation de site internet');
INSERT INTO [projet] ([client_id], [nom]) VALUES (2, 'Logiciel CRM');
INSERT INTO [projet] ([client_id], [nom]) VALUES (3, 'Logiciel de devis');
INSERT INTO [projet] ([client_id], [nom]) VALUES (4, 'Site internet ecommerce');
INSERT INTO [projet] ([client_id], [nom]) VALUES (2, 'logiciel ERP');
INSERT INTO [projet] ([client_id], [nom]) VALUES (5, 'logiciel Gestion de Stock');

INSERT INTO [devis] ([version], [reference], [prix], [projet_id]) VALUES (1, 'DEV2100A', 3000, 1);
INSERT INTO [devis] ([version], [reference], [prix], [projet_id]) VALUES (2, 'DEV2100B', 5000, 1);
INSERT INTO [devis] ([version], [reference], [prix], [projet_id]) VALUES (1, 'DEV2100C', 5000, 2);
INSERT INTO [devis] ([version], [reference], [prix], [projet_id]) VALUES (1, 'DEV2100D', 3000, 3);
INSERT INTO [devis] ([version], [reference], [prix], [projet_id]) VALUES (1, 'DEV2100E', 5000, 4);
INSERT INTO [devis] ([version], [reference], [prix], [projet_id]) VALUES (1, 'DEV2100F', 2000, 5);
INSERT INTO [devis] ([version], [reference], [prix], [projet_id]) VALUES (1, 'DEV2100G', 1000, 6);

INSERT INTO [facture] ([reference], [info], [total], [date_crea], [date_paiement], [devis_id])
VALUES ('FA001', 'Site internet partie 1', 1500, '2023-09-01', '2023-10-01', 1);
INSERT INTO [facture] ([reference], [info], [total], [date_crea], [devis_id])
VALUES ('FA002', 'Site internet partie 2', 1500, '2023-09-20', 2);
INSERT INTO [facture] ([reference], [info], [total], [date_crea], [devis_id])
VALUES ('FA003', 'Logiciel CRM', 5000, '2023-08-01', 3);
INSERT INTO [facture] ([reference], [info], [total], [date_crea], [date_paiement], [devis_id])
VALUES ('FA004', 'Logiciel devis', 3000, '2023-03-03', '2023-04-03', 4);
INSERT INTO [facture] ([reference], [info], [total], [date_crea], [devis_id])
VALUES ('FA005', 'Site internet ecommerce', 5000, '2023-04-03', 5);
INSERT INTO [facture] ([reference], [info], [total], [date_crea], [devis_id])
VALUES ('FA006', 'Logiciel ERP', 2000, '2023-05-04', 6);
