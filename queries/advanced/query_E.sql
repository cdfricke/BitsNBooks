SELECT AuthorName
FROM Author
NATURAL JOIN WrittenBy
NATURAL JOIN Book
NATURAL JOIN Contains
GROUP BY AuthorName
HAVING Contains.Qty = (
	SELECT MAX(Contains.Qty)
	FROM Author
NATURAL JOIN WrittenBy
NATURAL JOIN Book
NATURAL JOIN Contains
GROUP BY AuthorName
);
