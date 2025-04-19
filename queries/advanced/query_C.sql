SELECT Title, SUM(Contains.Qty) as TotalSold
FROM Book NATURAL JOIN Contains
GROUP BY Title
ORDER BY TotalSold DESC;