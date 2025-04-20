-- Provide a list of the titles in the database and associated dollar totals for copies 
-- sold to customers, sorted from the title that has sold the highest dollar amount to 
-- the title that has sold the smallest.
SELECT Title, SUM(Transactions.TotalPrice) as TotalSold
FROM Book NATURAL JOIN Contains NATURAL JOIN Transactions
GROUP BY Title
ORDER BY TotalSold DESC;