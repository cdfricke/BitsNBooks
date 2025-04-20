-- Find the average review score for books written by Pratchett
SELECT AVG(Score)
FROM Review * Book * WrittenBy * Author
WHERE AuthorName LIKE '%Pratchett%';
