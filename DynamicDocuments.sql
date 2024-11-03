CREATE DATABASE DynamicDocument;
USE DynamicDocument;

CREATE table documents (id INTEGER PRIMARY KEY AUTO_INCREMENT, title TEXT,content 
TEXT,author TEXT);
INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Fancy Stuff", "Ceiling wax, dragon wings, etc.");
INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Living Things", "They're located in the left ear, you know.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Pirate Recipes", "Cherry pie, apple pie, blueberry pie.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Boat Supplies", "Rudder - guitar. Main mast - bed post.");
 INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Things I'm Afraid Of", "Talking to my parents, the sea, giant pirates, 
heights.");

SELECT * FROM documents;

UPDATE documents 
SET author = Replace(author,"Jackie Paper","Jackie Draper")
WHERE id IN (3,4,5);
 
 
SELECT * FROM documents
WHERE author="Jackie Draper";

#STEP 2
DELETE FROM documents
WHERE id=5;

SELECT * FROM documents;