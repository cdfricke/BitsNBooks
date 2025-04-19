SELECT AuthorName
FROM Customer * Transactions * Contains * Book * WrittenBy * Author
WHERE CID IN (
	SELECT CID
	FROM Customer * Transactions
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
