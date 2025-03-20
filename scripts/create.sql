CREATE TABLE Customer(
	CID 				    INT 			NOT NULL,
	FirstName		 	    VARCHAR(16)		NOT NULL,
	LastName 			    VARCHAR(32)		NOT NULL,
	ShippingBillingAddress 	VARCHAR(64)     NOT NULL,
	CreditCardInfo 		    VARCHAR(64)		NOT NULL,
	Email 				    VARCHAR(32),
	Phone 				    VARCHAR(16),
	Primary Key(CID)
);

CREATE TABLE Transactions(
	TransactionID 		INT 			NOT NULL,
	CID				    INT			    NOT NULL,
	OrderStatus 		VARCHAR(16)	    NOT NULL,
	DateTimeCreation 	DATETIME,
	DateTimeSale 		DATETIME,
	Subtotal 			DECIMAL(2, 2),
	TotalPrice 			DECIMAL(2, 2),
	PRIMARY KEY(TransactionID),
	FOREIGN KEY (CID) REFERENCES Customer(CID)
);


CREATE TABLE Review(
	ReviewID 			INT         NOT NULL,
	CID 				INT			NOT NULL,
	ISBN 				CHAR(10)	NOT NULL,
	Review 			    TEXT,
	ReviewDate 			DATE,
	Score 				INT,
	Primary Key(ReviewID),
	Foreign Key(CID) references Customer(CID),
	Foreign Key(ISBN) references Book(ISBN)
);

CREATE TABLE Book (
	ISBN 				CHAR(10) 		NOT NULL,
	EditionNumber 		INT,
	Title 				VARCHAR(32)		NOT NULL,
	Quantity 			INT,
	PublicationYear 	INT,
	Category 			VARCHAR(32),
	Price 				DECIMAL(2,2)	NOT NULL,
	Language 			VARCHAR(16),
	NumReviews 			INT,
	Primary Key(ISBN)
);