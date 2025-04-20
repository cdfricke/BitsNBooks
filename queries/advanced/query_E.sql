-- Find the most popular author in the database (i.e. the one who has sold the most books)
SELECT AuthorName
FROM Author * WrittenBy * Book * Contains
GROUP BY AuthorName
HAVING Contains.Qty = (
	SELECT MAX(Contains.Qty)
	FROM Author * WrittenBy * Book * Contains
	GROUP BY AuthorName
);
