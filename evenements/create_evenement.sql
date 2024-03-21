INSERT INTO Evenements(name, description)
SELECT :name, :description
WHERE :name IS NOT NULL
RETURNING 'redirect' AS component, 'evenement.sql?id=' || id  AS link
SELECT 'form' AS component, 'Nouvel evenement' AS title, 'POST' as method;
SELECT 'name' AS name, True AS Required, 'Nom' AS label;
SELECT 'description' AS name, 'Description' as label;