select 'button' as component;
select 
    'evenements/create_evenement.sql' as link,
    'Nouvel Evenement'            as title;
SELECT 'list' AS component, 'Evenements' AS title;
SELECT
    name AS title,
    description AS description_md,
    'evenements/evenement.sql?id=' || id as edit_link,
    'evenements/delete_evenement.sql?id=' || id as delete_link
FROM Evenements;
