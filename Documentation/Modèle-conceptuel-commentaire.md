## Classe Person 
Tout être humain 
# Propriété 
nom, gender, date de mort, definition, notes
# Relation : 

## Classe Birth
Année de naissance d'une personne
# Propriété 
date, notes
# Relation 
Une Birth peut avoir une ou plusieurs person, une person ne peut avoir que une année de naissance, une person ne peut avoir qu'une mère et qu'un seul père

## Classe Pursuit 
Le fait d'avoir telle occupation ou activité durant telle période Il s'agit d'une classe temporalité (temporal entity)
# Propriété
begin year, end year, definition, notes
# Relation 
Une Pursuit peut comprend une et une seule personne, une et une seule occupation (ces deux relations sont nécessaires) et éventuellement on peut associer une (et une seule) organisation auprès de laquelle l'activité est exercée.

## Classe Occupation 
Le métier occupé
# Propriété 
name, definition, notes 
# Relation 
Une personne peut avoir un ou plusieurs métiers, mais peut comprendre un et une seule pursuit. Une relation réfléxive de spécialisation, termes plus génériques associés à des termes plus précis. Par exemple 'miniaturiste' ou 'portraitiste' spécialise le terme de 'peintre'. 

## Classe Art Mouvement 
Le fait d'appartenir à un mouvement artistique 
# Propriété 
name, definition, date, notes
# Relation
Un art mouvement peut comprendre une et plusieurs person, et une person peut avoir entre 0 et plusieurs art mouvement 

Comment exprimer une person a été apprentie chez telle person ? 