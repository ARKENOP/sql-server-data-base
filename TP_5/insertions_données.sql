USE team_builder
GO 

-- Ajout de personnes
INSERT INTO personne (nom, prenom) VALUES
('Brad', 'Pitt'),
('Bruce', 'Willis'),
('Nicolas', 'Cage'),
('Angelina', 'Jolie'),
('Tom', 'Cruise'),
('Tom', 'Hanks'),
('Bob', 'Dylan'),
('Jonny', 'Cash'),
('Jimmy', 'Hendrix');

-- Ajout d'équipes
INSERT INTO equipe (nom, projet, personne_id) VALUES
('Team A', 'Projet site Internet Mairie', 1),  -- Brad Pitt
('Team A', 'Projet site Internet Mairie', 2),  -- Bruce Willis
('Team A', 'Projet site Internet Mairie', 3),  -- Nicolas Cage
('Team B', 'Projet CRM', 4),  -- Angelina Jolie
('Team B', 'Projet CRM', 5),  -- Tom Cruise
('Team B', 'Projet CRM', 6),  -- Tom Hanks
('Team C', 'Projet ERC', 7),  -- Bob Dylan
('Team C', 'Projet ERC', 8),  -- Jonny Cash
('Team C', 'Projet ERC', 9);  -- Jimmy Hendrix

-- Ajout de relations entre personnes et équipes
INSERT INTO equipe_has_personne (personne_id, equipe_id) VALUES
(1, 1),  -- Brad Pitt dans Team A
(2, 1),  -- Bruce Willis dans Team A
(3, 1),  -- Nicolas Cage dans Team A
(4, 2),  -- Angelina Jolie dans Team B
(5, 2),  -- Tom Cruise dans Team B
(6, 2),  -- Tom Hanks dans Team B
(7, 3),  -- Bob Dylan dans Team C
(8, 3),  -- Jonny Cash dans Team C
(9, 3);  -- Jimmy Hendrix dans Team C
