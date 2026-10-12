CREATE DATABASE IF NOT EXISTS petistaan;

USE petistaan;

SELECT ot.id, ot.first_name, ot.last_name, ot.gender, ot.city, ot.state, 
ot.mobile_number, ot.email_id, ot.pet_id, 
pt.name, pt.gender, pt.type, dpt.date_of_birth, wpt.place_of_birth
FROM owner_table ot 
JOIN pet_table pt ON pt.id = ot.pet_id
LEFT JOIN domestic_pet_table dpt ON pt.id = dpt.id
LEFT JOIN wild_pet_table wpt ON pt.id = wpt.id;

SELECT ot.id, ot.first_name, ot.last_name, ot.gender, ot.city, ot.state, 
ot.mobile_number, ot.email_id, ot.pet_id, 
pt.name, pt.gender, pt.type, dpt.date_of_birth
FROM owner_table ot 
JOIN pet_table pt ON pt.id = ot.pet_id
LEFT JOIN domestic_pet_table dpt ON pt.id = dpt.id;

SELECT ot.id, ot.first_name, ot.last_name, ot.gender, ot.city, ot.state, 
ot.mobile_number, ot.email_id, ot.pet_id, 
pt.name, pt.gender, pt.type, wpt.place_of_birth
FROM owner_table ot 
JOIN pet_table pt ON pt.id = ot.pet_id
LEFT JOIN wild_pet_table wpt ON pt.id = wpt.id;

SELECT ot.id, ot.first_name, ot.last_name, ot.gender, ot.city, ot.state, 
ot.mobile_number, ot.email_id, ot.pet_id, 
pt.name, pt.gender, pt.type
FROM owner_table ot 
JOIN pet_table pt ON pt.id = ot.pet_id;

SELECT pt.id, pt.name, pt.gender, pt.type, dpt.date_of_birth, wpt.place_of_birth
FROM pet_table pt
LEFT JOIN domestic_pet_table dpt ON pt.id = dpt.id
LEFT JOIN wild_pet_table wpt ON pt.id = wpt.id;

SELECT pt.id, pt.name, pt.gender, pt.type, dpt.date_of_birth
FROM pet_table pt
LEFT JOIN domestic_pet_table dpt ON pt.id = dpt.id;

SELECT pt.id, pt.name, pt.gender, pt.type, wpt.place_of_birth
FROM pet_table pt
LEFT JOIN wild_pet_table wpt ON pt.id = wpt.id;

SELECT ot.id, ot.first_name, ot.last_name, ot.gender, ot.city, ot.state, 
ot.mobile_number, ot.email_id, ot.pet_id
FROM owner_table ot;

SELECT pt.id, pt.name, pt.gender, pt.type
FROM pet_table pt;

SELECT dpt.id, dpt.date_of_birth
FROM domestic_pet_table dpt;

SELECT wpt.id, wpt.place_of_birth
FROM wild_pet_table wpt;
