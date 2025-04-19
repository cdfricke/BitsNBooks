SELECT FirstName, LastName, SUM(Transactions.TotalPrice) as TotalSpent
FROM Customer NATURAL JOIN Transactions
GROUP BY CID;