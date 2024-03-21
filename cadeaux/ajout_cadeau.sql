INSERT INTO Cadeaux(name, description, link, evenement_id)
SELECT :name, :description, :link, $evenement_id
WHERE :name IS NOT NULL AND $evenement_id IS NOT NULL
RETURNING 'redirect' AS component, '/evenements/evenement.sql?id=' || $evenement_id  AS link;

SELECT 'form' AS component, 'Nouveau cadeau' AS title, 'POST' as method, 'ajout_cadeau.sql?evenement_id=' || $evenement_id;
SELECT 'name' AS name, True AS Required, 'Nom' AS label;
SELECT 'description' AS name, 'Description' as label;
SELECT 'link' AS name, 'Lien' as label;
