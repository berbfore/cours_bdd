-- récupération de l'id , le titre et image de la table movies.
SELECT id, title, image_url FROM movies;

-- récupération des prénoms et noms du casting.
SELECT id, firstname, lastname FROM castings;

-- récupération de tous les prénoms + noms du casting par date de naissances.
SELECT id, firstname, lastname  FROM castings ORDER BY birthdate;

-- récupération de tous les prénoms + noms du casting avec le nom du casting
SELECT castings.id, firstname, lastname, type, casting_types.name  
FROM castings
INNER JOIN casting_types ON castings.type = casting_types.id;

-- récupération de tous les prénoms + noms du nom du casting avec un tri par nom de type de casting.
SELECT castings.id, firstname, lastname, type, casting_types.name  
FROM castings
INNER JOIN casting_types ON castings.type = casting_types.id
ORDER BY casting_types.name;

-- récupération de tous les prénoms + noms du nom du casting avec un tri par nom de type de casting et nom.
SELECT castings.id, firstname, lastname, type, casting_types.name  
FROM castings
INNER JOIN casting_types ON castings.type = casting_types.id
ORDER BY casting_types.name, lastname;

-- récupération de tous les prénoms + noms du nom du casting avec un tri par nom de type de casting et nom(décroissant).
SELECT castings.id, firstname, lastname, type, casting_types.name  
FROM castings
INNER JOIN casting_types ON castings.type = casting_types.id
ORDER BY casting_types.name, lastname DESC;

-- récupération de tous les prénoms + noms du nom du casting avec un tri par nom de type de casting (décroissant) et nom.
SELECT castings.id, firstname, lastname, type, casting_types.name  
FROM castings
INNER JOIN casting_types ON castings.type = casting_types.id
ORDER BY casting_types.name DESC, lastname DESC;

