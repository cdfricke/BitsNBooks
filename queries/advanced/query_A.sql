-- Provide a list of customer names, along with the total dollar amount each customer has spent.
SELECT FirstName, LastName, SUM(Transactions.TotalPrice) as TotalSpent
FROM Customer NATURAL JOIN Transactions
GROUP BY CID;