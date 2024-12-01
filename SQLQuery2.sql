use model

-- Table Client
CREATE TABLE Client (
    client_id INT IDENTITY(1,1) PRIMARY KEY,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    email VARCHAR(100),
    ville VARCHAR(100)
);

-- Table Produit
CREATE TABLE Produit (
    produit_id INT IDENTITY(1,1) PRIMARY KEY,
    nom_produit VARCHAR(255),
    categorie VARCHAR(100),
    prix DECIMAL(10, 2)
);

-- Table Campagne
CREATE TABLE Campagne (
    campagne_id INT IDENTITY(1,1) PRIMARY KEY,
    nom_campagne VARCHAR(255),
    date_debut DATE,
    date_fin DATE,
    budget DECIMAL(10, 2)
);

-- Table Vente
CREATE TABLE Vente (
    vente_id INT IDENTITY(1,1) PRIMARY KEY,
    client_id INT,
    produit_id INT,
    campagne_id INT,
    date_vente DATE,
    montant_total DECIMAL(10, 2),
    FOREIGN KEY (client_id) REFERENCES Client(client_id),
    FOREIGN KEY (produit_id) REFERENCES Produit(produit_id),
    FOREIGN KEY (campagne_id) REFERENCES Campagne(campagne_id)
);
INSERT INTO Client (nom, prenom, email, ville)
VALUES 
    ('Dupont', 'Marie', 'marie.dupont@gmail.com', 'Paris'),
    ('Martin', 'Jean', 'jean.martin@hotmail.fr', 'Lyon'),
    ('Bernard', 'Clara', 'clara.bernard@gmail.com', 'Marseille'),
    ('Thomas', 'Louis', 'louis.thomas@hotmail.fr', 'Nice'),
    ('Robert', 'Julie', 'julie.robert@gmail.com', 'Toulouse'),
    
-- Ajout de plus de clients
('Laurent', 'Nathalie', 'nathalie.laurent@gmail.com', 'Montpellier'),
('Michel', 'Antoine', 'antoine.michel@hotmail.fr', 'Nice'),
('Garcia', 'Alice', 'alice.garcia@gmail.com', 'Grenoble'),
('David', 'Julien', 'julien.david@hotmail.fr', 'Metz'),
('Bertrand', 'Marie', 'marie.bertrand@gmail.com', 'Nancy'),
('Fournier', 'Pierre', 'pierre.fournier@hotmail.fr', 'Brest'),
('Girard', 'Lucas', 'lucas.girard@gmail.com', 'Limoges'),
('Richard', 'Anne', 'anne.richard@hotmail.fr', 'Clermont-Ferrand'),
('Chevalier', 'Hugo', 'hugo.chevalier@gmail.com', 'Tours'),
('Roux', 'Emma', 'emma.roux@hotmail.fr', 'Reims'),

-- Continuons jusqu'à 100
('Blanc', 'Lucie', 'lucie.blanc@gmail.com', 'Amiens'),
('Pereira', 'Leo', 'leo.pereira@hotmail.fr', 'Poitiers'),
('Morin', 'Elodie', 'elodie.morin@gmail.com', 'Béziers'),
('Gauthier', 'Victor', 'victor.gauthier@hotmail.fr', 'Mulhouse'),
('Pons', 'Charlotte', 'charlotte.pons@gmail.com', 'Cannes'),
('Fernandez', 'Mickael', 'mickael.fernandez@hotmail.fr', 'Nîmes'),
('Adam', 'Thomas', 'thomas.adam@gmail.com', 'Perpignan'),
('Caron', 'Isabelle', 'isabelle.caron@hotmail.fr', 'La Rochelle'),
('Robin', 'Noémie', 'noemie.robin@gmail.com', 'Avignon'),
('Perez', 'Hélène', 'helene.perez@hotmail.fr', 'Dijon'),

('Martin', 'Camille', 'camille.martin@gmail.com', 'Lyon'),
('Bernard', 'Théo', 'theo.bernard@hotmail.fr', 'Orléans'),
('Thomas', 'Amandine', 'amandine.thomas@gmail.com', 'Saint-Étienne'),
('Petit', 'Axel', 'axel.petit@hotmail.fr', 'Le Mans'),
('Durand', 'Léa', 'lea.durand@gmail.com', 'Toulon'),
('Leroy', 'Nathan', 'nathan.leroy@hotmail.fr', 'Angers'),
('Moreau', 'Estelle', 'estelle.moreau@gmail.com', 'Bourges'),
('Simon', 'Maxime', 'maxime.simon@hotmail.fr', 'Vannes'),
('Laurent', 'Chloé', 'chloe.laurent@gmail.com', 'Aix-en-Provence');

INSERT INTO Produit (nom_produit, categorie, prix)
VALUES 
('Smartphone X', 'Technologie', 799.99),
('Laptop Pro', 'Technologie', 1299.99),
('TV 4K Ultra', 'Électronique', 599.99),
('Montre Connectée', 'Technologie', 199.99),
('Casque Bluetooth', 'Électronique', 89.99),
('Tablette Z', 'Technologie', 349.99),
('Clavier Gamer', 'Accessoires', 49.99),
('Souris Gamer', 'Accessoires', 29.99),
('Enceinte Portable', 'Électronique', 159.99),
('Appareil Photo HD', 'Électronique', 999.99),

-- Produits de catégorie "Maison"
('Machine à Café', 'Maison', 79.99),
('Aspirateur Robot', 'Maison', 299.99),
('Mixeur Blender', 'Maison', 49.99),
('Purificateur d''Air', 'Maison', 199.99), -- Apostrophe échappée ici
('Chauffage d''Appoint', 'Maison', 89.99), -- Apostrophe échappée ici
('Ventilateur Tour', 'Maison', 69.99),
('Machine à Laver', 'Maison', 499.99),
('Réfrigérateur XL', 'Maison', 799.99),
('Four Micro-ondes', 'Maison', 149.99),
('Lave-vaisselle', 'Maison', 599.99),

-- Produits de catégorie "Mode"
('Veste en Cuir', 'Mode', 249.99),
('Baskets Running', 'Mode', 119.99),
('Montre Analogique', 'Mode', 99.99),
('Sac à Main Luxe', 'Mode', 499.99),
('Lunettes de Soleil', 'Mode', 89.99),
('Jeans Slim', 'Mode', 59.99),
('T-Shirt Graphique', 'Mode', 19.99),
('Chaussures Décontractées', 'Mode', 79.99),
('Écharpe en Laine', 'Mode', 39.99),
('Casquette Unisexe', 'Mode', 29.99),

-- Produits de catégorie "Sport"
('Vélo de Montagne', 'Sport', 999.99),
('Tapis de Yoga', 'Sport', 29.99),
('Haltères 10kg', 'Sport', 49.99),
('Chaussures de Foot', 'Sport', 89.99),
('Raquette de Tennis', 'Sport', 149.99),
('Sac de Sport', 'Sport', 39.99),
('Montre Cardio', 'Sport', 179.99),
('Short Running', 'Sport', 29.99),
('Vélo Elliptique', 'Sport', 499.99),
('Gants de Boxe', 'Sport', 39.99),

-- Produits de catégorie "Jardin"
('Tondeuse Électrique', 'Jardin', 249.99),
('Barbecue à Charbon', 'Jardin', 199.99),
('Salon de Jardin', 'Jardin', 799.99),
('Piscine Gonflable', 'Jardin', 149.99),
('Parasol Extérieur', 'Jardin', 89.99),
('Hamac en Coton', 'Jardin', 49.99),
('Arrosoir Automatique', 'Jardin', 69.99),
('Coupe-Bordures', 'Jardin', 59.99),
('Abri de Jardin', 'Jardin', 999.99),
('Table de Jardin', 'Jardin', 299.99),

-- Produits de catégorie "Bricolage"
('Perceuse Sans Fil', 'Bricolage', 149.99),
('Ponceuse Électrique', 'Bricolage', 99.99),
('Échelle Télescopique', 'Bricolage', 129.99),
('Marteau Perforateur', 'Bricolage', 199.99),
('Scie Circulaire', 'Bricolage', 149.99),
('Meuleuse d''Angle', 'Bricolage', 89.99), -- Apostrophe échappée ici
('Pistolet à Peinture', 'Bricolage', 79.99),
('Tournevis Électrique', 'Bricolage', 29.99),
('Détecteur de Métaux', 'Bricolage', 99.99),
('Boîte à Outils Complète', 'Bricolage', 199.99),

-- Produits de catégorie "Beauté"
('Sèche-Cheveux Pro', 'Beauté', 79.99),
('Fer à Boucler', 'Beauté', 59.99),
('Lisseur à Cheveux', 'Beauté', 99.99),
('Brosse Électrique', 'Beauté', 49.99),
('Épilateur à Lumière Pulsée', 'Beauté', 299.99),
('Crème Anti-Âge', 'Beauté', 69.99),
('Parfum Femme', 'Beauté', 89.99),
('Parfum Homme', 'Beauté', 79.99),
('Masque de Nuit', 'Beauté', 19.99),
('Rasoir Électrique', 'Beauté', 129.99),

-- Produits de catégorie "Alimentation"
('Machine à Pain', 'Alimentation', 149.99),
('Grille-Pain', 'Alimentation', 29.99),
('Bouilloire Inox', 'Alimentation', 39.99),
('Cafetière Filtre', 'Alimentation', 89.99),
('Blender Chauffant', 'Alimentation', 199.99),
('Friteuse Sans Huile', 'Alimentation', 99.99),
('Robot de Cuisine', 'Alimentation', 499.99),
('Presse-Agrumes', 'Alimentation', 49.99),
('Plancha Électrique', 'Alimentation', 79.99),
('Machine à Glace', 'Alimentation', 129.99),

-- Derniers produits
('Caméra de Surveillance', 'Technologie', 199.99),
('Station Météo Connectée', 'Technologie', 149.99),
('Réveil Intelligent', 'Technologie', 89.99),
('Imprimante 3D', 'Technologie', 799.99),
('Lecteur Blu-Ray', 'Technologie', 199.99),
('Drone avec Caméra', 'Technologie', 599.99),
('Projecteur LED', 'Technologie', 399.99),
('Smartwatch Étanche', 'Technologie', 249.99),
('Routeur Wi-Fi 6', 'Technologie', 149.99),
('Ordinateur Portable Gamer', 'Technologie', 1999.99);

INSERT INTO Campagne (nom_campagne, date_debut, date_fin, budget)
VALUES 
   ('Promotion de Noël 1', '2022-12-01', '2022-12-31', 50000),
    ('Soldes d''été 1', '2022-07-01', '2022-07-31', 30000),
    ('Campagne Printemps 1', '2022-03-01', '2022-03-31', 25000),
    ('Campagne Automne 1', '2022-09-01', '2023-09-30', 40000),
    ('Promotion de Noël 2', '2023-12-01', '2023-12-31', 52000),
    ('Soldes d''été 2', '2023-07-01', '2023-07-31', 32000),
    ('Campagne Printemps 2', '2023-03-01', '2023-03-31', 26000),
    ('Campagne Automne 2', '2023-09-01', '2023-09-30', 41000),
    ('Promotion de Noël 3', '2024-12-01', '2024-12-31', 53000),
    ('Soldes d''été 3', '2024-07-01', '2024-07-31', 33000);

INSERT INTO Vente (client_id, produit_id, campagne_id, date_vente, montant_total)
VALUES 
    (1, 25, 1, '2022-12-10', 50000),  -- Promotion de Noël 1
    (2, 23, 2, '2022-07-15', 30000),  -- Soldes d'été 1
    (3, 3, 3, '2022-08-05', 25000),   -- Campagne Printemps 1
    (4, 21, 4, '2022-12-11', 40000),  -- Campagne Automne 1
    (5, 24, 5, '2023-09-12', 52000),  -- Promotion de Noël 2
    (6, 25, 6, '2023-07-20', 32000),  -- Soldes d'été 2
    (7, 3, 7, '2023-11-25', 26000),   -- Campagne Printemps 2
    (8, 22, 8, '2023-06-30', 41000),  -- Campagne Automne 2
    (9, 26, 9, '2024-05-05', 53000),  -- Promotion de Noël 3
    (10, 27, 10, '2024-08-17', 33000);-- Soldes d'été 3


--- chiffre d'affaire total 
SELECT SUM(montant_total) AS chiffre_affaires_total
FROM Vente;

---nombre total de ventes 
SELECT COUNT(*) AS nombre_total_ventes
FROM Vente;

---Nombre de clients actifs
SELECT COUNT(DISTINCT client_id) AS nombre_clients_actifs
FROM Vente;

--- calculer le ROI global 
SELECT 
    SUM(v.montant_total) AS chiffre_affaires_total,
    SUM(c.budget) AS budget_total,
    (SUM(v.montant_total) - SUM(c.budget)) / NULLIF(SUM(c.budget), 0) * 100 AS ROI_global
FROM Vente v
JOIN Campagne c ON v.campagne_id = c.campagne_id;


