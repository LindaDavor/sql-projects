CREATE DATABASE  ClothingAlterations;
USE ClothingAlterations;

CREATE TABLE clothes (id INTEGER PRIMARY KEY AUTO_INCREMENT, type TEXT,design TEXT);
 INSERT INTO clothes (type, design)
    VALUES ("dress", "pink polka dots");
 INSERT INTO clothes (type, design)
    VALUES ("pants", "rainbow tie-dye");
 INSERT INTO clothes (type, design)
    VALUES ("blazer", "black sequin");

SELECT * FROM clothes;


#ADD PRICE COLUMN
ALTER TABLE clothes
ADD price INT;

SELECT * FROM clothes;

# item1=$10,item2=$20,item3=$30
UPDATE clothes SET price = 10 WHERE id = 1; 
UPDATE clothes SET price = 20 WHERE id = 2; 
UPDATE clothes SET price = 30 WHERE id = 3; 

SELECT * FROM clothes;


#STEP 3
 INSERT INTO clothes (type, design,price)
    VALUES ("shorts", "gucci",40);
    
SELECT * FROM clothes;