-- Find the total number of books purchased by a single customer (you choose how to designate the customer)
SELECT Sum(Qty)
FROM Transactions NATURAL JOIN Contains
WHERE CID = 1;
