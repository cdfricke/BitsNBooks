SELECT FirstName, LastName, Email, Phone, ShippingBillingAddress, CreditCardInfo
FROM Customer
NATURAL JOIN Transactions
NATURAL JOIN Contains
NATURAL JOIN Book
NATURAL JOIN WrittenBy
NATURAL JOIN Author
WHERE AuthorName = (
	SELECT AuthorName
	FROM Author
	NATURAL JOIN WrittenBy
NATURAL JOIN Book
NATURAL JOIN Contains
NATURAL JOIN Transactions
GROUP BY AuthorName
	HAVING TotalPrice =  (
		SELECT MAX(TotalPrice)
		FROM Author
NATURAL JOIN WrittenBy
NATURAL JOIN Book
NATURAL JOIN Contains
NATURAL JOIN Transactions
GROUP BY AuthorName
)
	);
