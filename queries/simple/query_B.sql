SELECT Title, DateTimeSale
FROM Book NATURAL JOIN Contains
NATURAL JOIN Transactions
WHERE CID = 1;
