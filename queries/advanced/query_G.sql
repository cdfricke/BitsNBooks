SELECT FirstName, LastName, Email, Phone, ShippingBillingAddress, CreditCardInfo
FROM Customer * Transactions * Contains * Book * WrittenBy * Author
WHERE AuthorName = (
	SELECT AuthorName
	FROM Transactions * Contains * Book * WrittenBy * Author
    GROUP BY AuthorName
	HAVING TotalPrice = (
		SELECT MAX(TotalPrice)
		FROM Transactions * Contains * Book * WrittenBy * Author
        GROUP BY AuthorName
    )
);