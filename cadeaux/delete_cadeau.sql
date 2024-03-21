DELETE FROM Cadeaux
WHERE id=$id
RETURNING  'redirect' AS component, '/evenements/evenement.sql?id=' || evenement_id as link;