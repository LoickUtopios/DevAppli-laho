USE demo1;

INSERT INTO salarie (nom, prenom, age, salaire, service_id)
VALUES
	("Jean", "Dupont", 30, 1400, 1),
    ("Michelle", "Dufour", 29, 2800, 2),
    ("Geralt", "De rives", 24, 1500, 1),
    ("Jasquier", "Dandelion", 41, 2100, 2),
    ("Eren", "Jager", 20, 2000, 1),
    ("Mikasa", "Ackerman", 25, 2200, 2),
    ("Carl", "Johnson", 35, 3000, 1),
    ("Joe", "Dalton", 27, 600, 2);
    
-- Sélectionner toutes les colonnes d'une tables
SELECT * FROM salarie; 

-- Sélectionner des colonnes spécifiques
SELECT nom, prenom
FROM salarie; 

-- Alias pour les colonnes
SELECT libelle AS nom_service, date_creation AS creation
FROM services; 

-- La clause Where permet de filtrer les résultats de la requete
SELECT *
FROM salarie
WHERE salarie_id = 1; 

SELECT *
FROM salarie
WHERE salaire > 2000 AND age > 20; 

SELECT *
FROM salarie
WHERE salaire > 3000 OR ( age > 30 AND NOT service_id = 1); 

-- Nous pouvons fournir une plage de valeur dans notre filtre WHERE
-- Pour rechercher des termes spécifiques, nous utilisons le mot-clé insert
SELECT *
FROM salarie
WHERE nom IN ('Joe', 'Jasquier', 'Jean');

SELECT *
FROM salarie
WHERE age NOT IN (20, 25, 35);

-- Pour rechercher un élement qui fait partie d'une plage de valeur, nous utilisont BETWEEN..AND
SELECT *
FROM salarie
WHERE salaire BETWEEN 1500 AND 2500; -- Les valeurs données sont incluses

SELECT *
FROM salarie
WHERE age NOT BETWEEN 20 AND 30; 

-- Le distinct permet de récupérer les élements sans afficher de doublon
SELECT DISTINCT age 
FROM salarie;

-- Le LIKE permet d'effectuer une recherche sur une partie d'une chaine de caractere
SELECT * 
FROM salarie
WHERE prenom LIKE 'J%';

SELECT * 
FROM salarie
WHERE prenom LIKE 'J____';

SELECT * 
FROM salarie
WHERE prenom LIKE '%g%';





