-- Find all warehouses that store books written by Pratchett
SELECT City, Street
FROM Warehouse * StoredIn * WrittenBy * Author
WHERE AuthorName LIKE '%Pratchett%';
