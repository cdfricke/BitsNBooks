SELECT Title FROM Book
NATURAL JOIN WrittenBy
NATURAL JOIN Author
WHERE Title LIKE '%Pratchett%' AND Price < 10;