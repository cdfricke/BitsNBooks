SELECT FirstName, LastName, Email
FROM Customer NATURAL JOIN Transactions
GROUP BY CID
HAVING SUM(Transactions.TotalPrice) > (
	SELECT AVG(TotalSpent)
	FROM (
		SELECT SUM(Transactions.TotalPrice) as TotalSpent
		FROM Transactions
		GROUP BY CID
	)
);