-- Find the average number of reviews written by Customers
SELECT AVG(ReviewCount)
FROM (
	SELECT CID, COUNT(*) AS ReviewCount
	FROM Review
	GROUP BY CID
);