-- Find the most profitable author in the database for this store (i.e. the one who has brought in the most money)
SELECT AuthorName
FROM Author * WrittenBy * Book * Contains * Transactions
GROUP BY AuthorName
HAVING TotalPrice = (
	SELECT MAX(TotalPrice)
	FROM Author * WrittenBy * Book * Contains * Transactions
	GROUP BY AuthorName
);
