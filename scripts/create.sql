-- CREATE TABLE statements for all relations of the database. Can be used
-- to re-create the SQLite binary file from scratch if necessary.
-- After running this script to create the tables, they will be empty.
-- You will then need to import the original data from the CSV files to
-- the relations in DataGrip, etc.

-- The following relational schemas are up to date with Project Checkpoint 4.

-- CREATE Customer, Transactions, Review, Book, Author, Warehouse, Publisher,
-- WrittenBy, View, Contains, StoredIn

CREATE TABLE Customer(
	CID 				    INT 			NOT NULL,
	FirstName		 	    VARCHAR(16)		NOT NULL,
	LastName 			    VARCHAR(32)		NOT NULL,
	ShippingAddress 		VARCHAR(64)     NOT NULL,
	BillingAddress			VARCHAR(64)		NOT NULL,
	CCNum					VARCHAR(20),
	CCExpiry				DATE,
	CCSecCode				CHAR(3),
	CCFirstName				VARCHAR(16),
	CCLastName				VARCHAR(32),
	Email 				    VARCHAR(32),
	Phone 				    CHAR(12),
	Primary Key(CID)
);

CREATE TABLE Transactions(
	TransactionID 			INT 			NOT NULL,
	CID				    	INT			    NOT NULL,
	OrderStatus 			VARCHAR(16)	    NOT NULL,
	DateTimeCreation 		DATETIME,
	DateTimeSale 			DATETIME,
	Subtotal 				DECIMAL(2, 2),
	TotalPrice 				DECIMAL(2, 2),
	PRIMARY KEY(TransactionID),
	FOREIGN KEY (CID) REFERENCES Customer(CID)
);


CREATE TABLE Review(
	ReviewID 				INT         	NOT NULL,
	CID 					INT				NOT NULL,
	ISBN 					CHAR(10)		NOT NULL,
	Review 			    	TEXT,
	ReviewDate 				DATE,
	Score 					INT,
	Primary Key(ReviewID),
	Foreign Key(CID) references Customer(CID),
	Foreign Key(ISBN) references Book(ISBN)
);

CREATE TABLE Book (
	ISBN 					CHAR(10) 		NOT NULL,
	EditionNumber 			CHAR(3),
	Title 					VARCHAR(32)		NOT NULL,
	Quantity 				INT,
	PublicationYear 		INT,
	Category 				VARCHAR(32),
	Price 					DECIMAL(2,2)	NOT NULL,
	Languages 				VARCHAR(16),
	NumReviews 				INT,
	PublisherID				INT,
	Primary Key(ISBN),
	FOREIGN KEY(PublisherID) REFERENCES Book(PublisherID)
);


CREATE TABLE Author (
	AuthorID 				INT 			NOT NULL,
	AuthorName 				VARCHAR(64)		NOT NULL,
	DOB 					DATE,
	Nationality 			VARCHAR(64),
	PRIMARY KEY(AuthorID)
);

CREATE TABLE Warehouse (
	City 					VARCHAR(32) 	NOT NULL,
	Street					VARCHAR(32) 	NOT NULL,
	Primary Key(City, Street)
);

CREATE TABLE Publisher(
	PublisherID				INT				NOT NULL,
	City					VARCHAR(16),
	Street					VARCHAR(64),
	PublisherName			VARCHAR(32)		NOT NULL,
	Email					VARCHAR(32),
	Phone					CHAR(10)		NOT NULL,
	PRIMARY KEY  (PublisherID)
);

CREATE TABLE WrittenBy (
	ISBN					CHAR(10)		NOT NULL,
	AuthorID				INT				NOT NULL,
	FOREIGN KEY (ISBN) REFERENCES Book(ISBN),
	FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID)
);

CREATE TABLE Views (
	CID						INT				NOT NULL,
	ISBN					CHAR(10)		NOT NULL,
	FOREIGN KEY(CID) REFERENCES Customer(CID),
	FOREIGN KEY(ISBN) REFERENCES Book(ISBN)
);

CREATE TABLE Contains (
	TransactionID			INT				NOT NULL,
	ISBN					CHAR(10)		NOT NULL,
	Qty						INT				NOT NULL,
	FOREIGN KEY (TransactionID) REFERENCES Transactions(TransactionID)
);

CREATE TABLE StoredIn (
	City 					VARCHAR(16) 	NOT NULL,
	Street					VARCHAR(64) 	NOT NULL,
	ISBN					CHAR(10)		NOT NULL,
	Qty						INT				NOT NULL,
	FOREIGN KEY(City) REFERENCES Warehouse(City),
	FOREIGN KEY(Street) REFERENCES Warehouse(Street),
	FOREIGN KEY(ISBN) REFERENCES Book(ISBN)
);
