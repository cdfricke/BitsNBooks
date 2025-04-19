SELECT City, Street
FROM Warehouse
NATURAL JOIN StoredIn
NATURAL JOIN WrittenBy
NATURAL JOIN Author
WHERE AuthorName LIKE '%Pratchett%';
