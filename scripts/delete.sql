-- Tuple deletion examples

-- Book entity
DELETE FROM BOOK
WHERE ISBN = 1463027589;

-- Publisher entity
DELETE FROM PUBLISHER
WHERE PublisherID = 74;

-- Author entity
DELETE FROM Author
WHERE AuthorID = 163;

-- Customer entity
DELETE FROM Customer
WHERE CID = 1330;

-- Transactions entity
DELETE FROM Transactions
WHERE TransactionID = 85;

-- Review entity
DELETE FROM Review
WHERE ReviewID = 13;

-- Warehouse entity
DELETE FROM Warehouse
WHERE City = 'Waterbury' AND Street = '94 Clover Lane';

-- WrittenBy bridge table relationship
DELETE FROM WrittenBy
WHERE ISBN = 0324107502 AND AuthorID = 72;

-- Views bridge table relationship
DELETE FROM Views
WHERE CID = 7 AND ISBN = 0201615762;

-- Contains bridge table relationship
DELETE FROM Contains
WHERE TransactionID = 4 AND ISBN = 0425188361;

-- StoredIn bridge table relationship
DELETE FROM StoredIn
WHERE City = 'Manchester' AND Street = '87 Spruce Way' AND ISBN = 0782140114;
