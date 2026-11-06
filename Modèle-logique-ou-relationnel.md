person(pk_person, name, definition, gender, death_date, fk_birth, notes)

birth_year(pk_birth, date, fk_person,fk_geographique_place)

pursuit(pk_pursuit, fk_person, fk_occupation, fk_organisation, begin_date, end_date, sources, notes)

membership(pk_membership, label, fk_person, fk_organisation, begin_year, end_year, sources, notes)

organisation(pk_organisation, fk_geographical_place, name, definition, notes)

occupation(pk_occupation, name, definition, notes)

specializes_occupation(pk_specializes_occupation, fk_parent_occupation, fk_child_occupation, notes)

birth(pk_birth, date, fk_geographical_place, fk_union, sources, notes)

union(pk_union, fk_union_type, begin_date, end_date, fk_person_1, fk_person_2, sources, notes)

union_type(pk_union_type, name, definition, notes)

geographical_place(pk_geographical_place, name, definition, fk_geographical_place_type, notes)
