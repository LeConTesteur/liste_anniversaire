SELECT 'title' AS component, e.name AS title
FROM Evenements AS e
WHERE id=$id;
SELECT 'button' AS component;
SELECT 
    '/cadeaux/ajout_cadeau.sql?evenement_id=' || $id  AS link,
    'Ajouter un cadeau'            AS title;
SELECT 'list' AS component, 'Cadeaux' AS title;
SELECT 
    name AS title,
    description AS description_md,
    link AS link,
    '/cadeaux/edit_cadeau.sql?id=' || id as edit_link, 
    '/cadeaux/delete_cadeau.sql?id=' || id as delete_link
FROM Cadeaux
WHERE evenement_id=$id
SELECT 'button' AS component;
SELECT 
    '/' AS link,
    'Retour'            AS title;
