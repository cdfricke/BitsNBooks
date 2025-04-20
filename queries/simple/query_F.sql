-- Find the customer who has purchased the most books and the total number of books they have purchased
SELECT FirstName, LastName, TotalBooks
From Customer NATURAL JOIN (
    SELECT CID, Sum(Qty) as TotalBooks 
    FROM Transactions NATURAL JOIN Contains
    GROUP BY CID
)
WHERE TotalBooks = ( 
	SELECT MAX (TotalBooks)
	FROM (
		SELECT CID, Sum(Qty) as TotalBooks 
        FROM Transactions NATURAL JOIN Contains
        GROUP BY CID
    )
);