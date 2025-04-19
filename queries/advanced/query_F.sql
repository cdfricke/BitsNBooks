SELECT AuthorName
FROM Author * WrittenBy * Book * Contains * Transactions
GROUP BY AuthorName
HAVING TotalPrice = (
	SELECT MAX(TotalPrice)
	FROM Author * WrittenBy * Book * Contains * Transactions
    GROUP BY AuthorName
);