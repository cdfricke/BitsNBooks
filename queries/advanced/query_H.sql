-- Provide the list of authors who wrote the books purchased by the customers who have spent more than the average customer.
SELECT AuthorName
FROM Author * WrittenBy * Book * Contains * Transactions * Customer
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
