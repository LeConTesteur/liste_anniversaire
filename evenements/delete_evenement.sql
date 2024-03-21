DELETE FROM Evenements
WHERE id=$id;
SELECT 'redirect' AS component, '/'  AS link;