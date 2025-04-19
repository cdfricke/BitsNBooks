
SELECT AuthorName
FROM Author
NATURAL JOIN WrittenBy
NATURAL JOIN Book
NATURAL JOIN Contains
NATURAL JOIN Transactions
GROUP BY AuthorName
HAVING TotalPrice = (
	SELECT MAX(TotalPrice)
	FROM Author
NATURAL JOIN WrittenBy
NATURAL JOIN Book
NATURAL JOIN Contains
NATURAL JOIN Transactions
GROUP BY AuthorName
);
