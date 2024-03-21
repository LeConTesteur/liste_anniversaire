UPDATE Cadeaux
SET name=:name, description=:description, link=:link
WHERE $id IS NOT NULL
    AND :name IS NOT NULL
RETURNING 'redirect' AS component, '/evenements/evenement.sql?id=' || evenement_id  AS link;


CREATE TABLE _cadeau (
    name INTEGER,
    description TEXT,
    link TEXT
);
INSERT INTO _cadeau
SELECT name, description, link
FROM Cadeaux
WHERE id=$id;

SELECT 'form' AS component, 'Cadeau: ' || cadeau.name AS title, 'POST' as method, 'ajout_cadeau.sql?evenement_id=' || $evenement_id FROM _cadeau AS cadeau;
SELECT 'name' AS name, True AS Required, 'Nom' AS label, cadeau.name AS value FROM _cadeau AS cadeau;
SELECT 'description' AS name, 'Description' as label, cadeau.description AS value FROM _cadeau AS cadeau;
SELECT 'link' AS name, 'Lien' as label, cadeau.link AS value FROM _cadeau AS cadeau;

DROP TABLE _cadeau;