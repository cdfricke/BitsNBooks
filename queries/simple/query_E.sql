SELECT Sum(Qty)
FROM Transactions NATURAL JOIN Contains
WHERE CID = 1;
