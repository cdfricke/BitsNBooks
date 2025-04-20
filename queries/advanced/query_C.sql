-- Provide a list of the titles in the database and associated total copies sold to customers, 
-- sorted from the title that has sold the most individual copies to the title that has sold the least.
SELECT Title, SUM(Contains.Qty) as TotalSold
FROM Book NATURAL JOIN Contains
GROUP BY Title
ORDER BY TotalSold DESC;