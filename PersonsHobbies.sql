CREATE DATABASE lovedoing;
use lovedoing;


 CREATE TABLE persons (id INTEGER PRIMARY KEY AUTO_INCREMENT, name TEXT, age 
INTEGER);
 INSERT INTO persons (name, age) VALUES ("Bobby McBobbyFace", 12);
 INSERT INTO persons (name, age) VALUES ("Lucy BoBucie", 25);
 INSERT INTO persons (name, age) VALUES ("Banana FoFanna", 14);
 INSERT INTO persons (name, age) VALUES ("Shish Kabob", 20);
 INSERT INTO persons (name, age) VALUES ("Fluffy Sparkles", 8);
 INSERT INTO persons (name, age) VALUES ("Jerry Jay", 9);
 
 
  CREATE table hobbies (id INTEGER PRIMARY KEY AUTO_INCREMENT, person_id INTEGER,
 name TEXT);
 INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
 INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
 INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
 INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
 INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
 INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
 INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
 INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
 INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
 INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");
 INSERT INTO hobbies (person_id, name) VALUES (5, "hunting");
 
 
 #QUERYING ALL TABLES
 
 SELECT * FROM persons;
 SELECT * FROM hobbies;
 
 
 
 
 
 #Q1-INSERTING NEW RECORDS FOR PERSONS AND HOBBIES
 INSERT INTO persons (name, age) VALUES ("Manuel", 12);
 INSERT INTO hobbies (person_id, name) VALUES (6, "skipping");
 
  
#Q2-NAME + HOBBIES (INNER JOIN)
 SELECT persons.name,hobbies.name AS "Hobby"
 FROM persons JOIN hobbies ON persons.id=hobbies.person_id;
 
 #Q3-NAME + HOBBIES (INNER JOIN) WHEN THE NAME IS 'Bobby McBobbyFace'
 SELECT persons.name,hobbies.name AS "Hobby"
 FROM persons JOIN hobbies ON persons.id=hobbies.person_id WHERE persons.name="Bobby McBobbyFace";
