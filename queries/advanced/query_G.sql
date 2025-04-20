-- Provide a list of customer information for customers who purchased anything written by the most profitable author in the database.
SELECT FirstName, LastName, Email, Phone, ShippingBillingAddress, CreditCardInfo
FROM Customer * Transactions * Contains * Book * WrittenBy * Author
WHERE AuthorName = (
	SELECT AuthorName
	FROM Author * WrittenBy * Book * Contains * Transactions
	GROUP BY AuthorName
	HAVING TotalPrice =  (
		SELECT MAX(TotalPrice)
		FROM Author * WrittenBy * Book * Contains * Transactions
		GROUP BY AuthorName
	)
);
