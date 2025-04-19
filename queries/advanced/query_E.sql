SELECT AuthorName
FROM Author * WrittenBy * Book * Contains
GROUP BY AuthorName
HAVING Contains.Qty = (
	SELECT MAX(Contains.Qty)
	FROM Author * WrittenBy * Book * Contains
    GROUP BY AuthorName
);