USE TP_4_SELECT
GO

CREATE TABLE [client] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [nom] varchar(255) NOT NULL
)
GO

CREATE TABLE [projet] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [client_id] int NOT NULL,
  [nom] varchar(255)
)
GO

CREATE TABLE [devis] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [version] int NOT NULL,
  [reference] varchar(10) NOT NULL,
  [prix] float NOT NULL,
  [projet_id] int NOT NULL
)
GO

CREATE TABLE [facture] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [reference] varchar(10) NOT NULL,
  [info] varchar(255) NOT NULL,
  [total] float NOT NULL,
  [date_crea] date NOT NULL,
  [date_paiement] date,
  [devis_id] int NOT NULL
)
GO

ALTER TABLE [projet] ADD FOREIGN KEY ([client_id]) REFERENCES [client] ([id])
GO

ALTER TABLE [devis] ADD FOREIGN KEY ([projet_id]) REFERENCES [projet] ([id])
GO

ALTER TABLE [facture] ADD FOREIGN KEY ([devis_id]) REFERENCES [devis] ([id])
GO
