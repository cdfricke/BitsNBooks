SELECT AVG(Score)
FROM Review
NATURAL JOIN Book
NATURAL JOIN WrittenBy
NATURAL JOIN Author
WHERE AuthorName LIKE '%Pratchett%';
