-- Find the titles and ISBNs for all books with less than 5 copies in stock
SELECT Title, ISBN
FROM Book
WHERE Quantity < 5;