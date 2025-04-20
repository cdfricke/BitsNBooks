-- The largest tables in the database are likely to be the Customer, Book, Transactions, Views, and Review tables,
-- so it will be important to make joins fast for those relations with indexes on their key attributes, as well as
-- the bridge tables which connect them.

-- Indexes to help speed up JOIN queries
CREATE INDEX CIDSearch ON Customer (CID);
CREATE INDEX ISBNSearch ON Book (ISBN);
CREATE INDEX AuthorIDSearch ON Author (AuthorID);
CREATE INDEX ReviewSearch ON Review (CID);
CREATE INDEX BookReviewSearch ON Review (ISBN);
CREATE INDEX TransactionLookup ON Transactions (CID);

CREATE INDEX WrittenByIdx ON WrittenBy (AuthorID, ISBN);
CREATE INDEX ContainsIdx ON Contains (TransactionID, ISBN);
CREATE INDEX ViewsIdx ON Views (CID, ISBN);

-- Customers may often want to view large portions of the database, such as using a search bar to search
-- for books of a certain title or from a certain author. We will attempt to speed these queries up with
-- indexes like the following:
CREATE INDEX BookTitleSearch ON Book (Title);           -- so users can search for books by name
CREATE INDEX AuthorNameSearch ON Author (AuthorName);   -- so users can search for authors by name
CREATE INDEX PriceFilterSearch ON Book (Price);         -- so users can quickly filter or sort books by price