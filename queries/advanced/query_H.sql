SELECT AuthorName
FROM Author
NATURAL JOIN WrittenBy
NATURAL JOIN Book
NATURAL JOIN Contains
NATURAL JOIN Transactions
NATURAL JOIN Customer
WHERE CID IN (
	SELECT CID
	FROM Customer
	NATURAL JOIN Transactions
	GROUP BY CID
	HAVING SUM(TotalPrice) > (
		SELECT AVG(TotalSpent)
		FROM (
			SELECT SUM(TotalPrice) as TotalSpent
			FROM Transactions
			GROUP BY CID
		)
	)
);
