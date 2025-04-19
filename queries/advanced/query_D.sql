SELECT Title, SUM(Transactions.TotalPrice) as TotalSold
FROM Book NATURAL JOIN Contains NATURAL JOIN Transactions
GROUP BY Title
ORDER BY TotalSold DESC;