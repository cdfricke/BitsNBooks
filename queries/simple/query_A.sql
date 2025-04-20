-- Find the titles of all books by Pratchett that cost less than $10
SELECT Title FROM Book
NATURAL JOIN WrittenBy
NATURAL JOIN Author
WHERE Title LIKE '%Pratchett%' AND Price < 10;