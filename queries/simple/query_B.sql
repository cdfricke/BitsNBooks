-- Give all the titles and their dates of purchase made by a single customer (you choose how to designate the customer)
SELECT Title, DateTimeSale
FROM Book NATURAL JOIN Contains
NATURAL JOIN Transactions
WHERE CID = 1;
