SELECT AVG(ReviewCount)
FROM (
	SELECT CID, COUNT(*) AS ReviewCount
	FROM Review
	GROUP BY CID
);