-- Find names of the cats whose owners are both George Beatty and Melynda Abshire, or just George Beatty, or just Melynda Abshire
-- Your code here
SELECT DISTINCT     name FROM cats 
JOIN cat_owners ON (cat_owners.cat_id = cats.id) 
JOIN owners ON (owners.id = cat_owners.owner_id) 
WHERE first_name IN ('George', 'Melynda') AND 
last_name IN ('Beatty', 'Abshire');