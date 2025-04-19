SELECT FirstName, LastName, Title
FROM Customer NATURAL JOIN Transactions
NATURAL JOIN Contains
NATURAL JOIN Book
NATURAL JOIN WrittenBy
NATURAL JOIN Author
WHERE AuthorName LIKE '%Pratchett%';
