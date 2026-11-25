SELECT p.name, o2.name, o.name
FROM person p 
JOIN pursuit p2 ON p2.fk_person = p.pk_person 
JOIN occupation o2 ON o2.pk_occupation = p2.fk_occupation 
JOIN specialization_occupation so ON so.fk_child_occupation = p2.fk_occupation 
JOIN occupation o ON o.pk_occupation = so.fk_parent_occupation 