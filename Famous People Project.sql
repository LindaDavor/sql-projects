# PROJECT-FAMOUS PEOPLE

CREATE DATABASE FamousPeople;
USE FamousPeople;

# Table: MovieStars
CREATE TABLE MovieStars (
    StarID INT PRIMARY KEY ,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Country VARCHAR(50)
);

# Table: Movies
CREATE TABLE Movies (
    MovieID INT PRIMARY KEY ,
    Title VARCHAR(100),
    ReleaseYear INT,
    Genre VARCHAR(50),
    StarID INT
);

# Table: StarFriends
CREATE TABLE StarFriends (
    FriendshipID INT PRIMARY KEY ,
    Star1ID INT,
    Star2ID INT
);

-- Sample data for MovieStars
INSERT INTO MovieStars VALUES
(1, 'Charlie Chaplain', 30, 'Male', 'USA'),
(2, 'Anna DeAmars', 28, 'Female', 'UK'),
(3, 'Kojo Nkansah', 35, 'Male', 'Ghana'),
(4, 'Gary Cooper', 63, 'Male', 'Canada'),
(5, 'Mary Jane', 31, 'Female', 'Canada'),
(6, 'Lee Song', 25, 'Female', 'Korea'),
(7, 'Morris Sam', 45, 'Male', 'Germany'),
(8, 'Jackie Appah', 33, 'Female', 'Ghana'),
(9, 'Jim Ike ', 45, 'Male', 'Nigeria'),
(10, 'Mercy Johnson', 35, 'Female', 'Nigeria');

-- Sample data for Movies
INSERT INTO Movies VALUES
(101, 'Merry Go Run', 2010, 'Drama', 1),
(102, 'Project Silecnce', 2015, 'Action', 2),
(103, 'A thousand and One', 1998, 'Love', 5),
(104, 'One Piece', 2018, 'Anime', 7),
(105, 'Different Strokes', 2018, 'Romance', 4),
(106, '3 Beds 2 Bath 1 Ghost', 2018, 'Horror', 6),
(107, 'Breaking Bad', 1990, 'Comedy', 9),
(108, 'Concrete Utopia', 2018, 'Action', 10),
(109, 'Pursuit of Happyness', 2017, 'Drama', 3),
(110, 'Secret Invasion', 2002, 'SciFic', 8);

-- Sample data for StarFriends
INSERT INTO StarFriends VALUES
(201, 1, 2),
(202, 10, 3),
(203, 9, 7),
(204, 6, 4),
(205, 5, 8);


SELECT * FROM MovieStars;
SELECT * FROM Movies;
SELECT * FROM StarFriends;

# WHAT ARE THE AVG, MAX, MIN AGE OF THE TOP 10 ACTORS

SELECT 
	MAX(Age) AS "Highest Age", 
    ROUND(AVG(Age),0) AS "Average Age",
    MIN(Age) AS "Lowest Age"
FROM moviestars;

# YEAR WITH HIGHTEST MOVIES 
SELECT ReleaseYear, COUNT(*) AS "Number of Movies"
FROM movies
GROUP BY ReleaseYear
ORDER BY ReleaseYear DESC;

#NUMBER OF MOVIES PER GENRE IN DESCENDING ORDER
SELECT 
	Genre,
    Count(*) AS "Number of Movie"
FROM movies
GROUP BY Genre
ORDER BY COUNT(*) DESC;

#NUMBER OF MALES AND FEMALES IN THE LIST
SELECT Gender ,COUNT(*) AS "Quantity"
FROM moviestars
GROUP BY Gender
HAVING count(*)=5;

SELECT * FROM MovieStars;
SELECT * FROM Movies;
SELECT * FROM StarFriends;

#ACTORS WHO HAVE MOVIES PREMIERED BETWEEN 1990 AND 2010

SELECT 
	moviestars.name,
    movies.title,
    movies.releaseyear
FROM moviestars
INNER JOIN movies
ON moviestars.StarID=movies.StarID
WHERE ReleaseYear BETWEEN 1990 AND 2010
ORDER BY ReleaseYear ASC;


# NUMBER OF ACTORS PER COUNTRY 
SELECT Country, COUNT(*) AS "Number of Countries"
FROM moviestars
GROUP BY Country
ORDER BY COUNT(*) DESC;

# COUNTRIES WITH MORE THAN 1 ACTOR 
SELECT Country, COUNT(*) AS "Number of Countries"
FROM moviestars
GROUP BY Country
HAVING COUNT(*) > 1
ORDER BY Country ASC;

# Actors and their friends 
SELECT 
m1.name AS "Movie Star", m2.name AS "Friend"
FROM starfriends
INNER JOIN moviestars AS m1
ON m1.StarID=starfriends.Star1ID
INNER JOIN moviestars AS m2
ON m2.StarID=starfriends.Star2ID;


# ACTORS WHO HAVE ACTED IN MOVIES THAT HAVE "ONE" IN THEIR TITLE 6
SELECT 
	moviestars.name AS "MovieStar"	, 
    movies.title AS "Title"
FROM movies
JOIN moviestars 
ON movies.StarID=moviestars.StarID
WHERE title LIKE "%one%";

# Actors and the movies they actored 
SELECT 
	moviestars.name AS "MovieStar"	, 
    movies.title AS "Title"
FROM movies
JOIN moviestars 
ON movies.StarID=moviestars.StarID;



#EACH ACTOR AND HIS OR HER GENRE
SELECT 
	moviestars.name AS "MovieStar"	, 
    movies.Genre AS "Genre"
FROM movies
JOIN moviestars 
ON movies.StarID=moviestars.StarID;


