-- Give all the customers who purchased a book by Pratchett and the titles of Pratchett books they purchased
SELECT FirstName, LastName, Title
FROM Customer NATURAL JOIN Transactions
NATURAL JOIN Contains
NATURAL JOIN Book
NATURAL JOIN WrittenBy
NATURAL JOIN Author
WHERE AuthorName LIKE '%Pratchett%';
