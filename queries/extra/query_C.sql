SELECT AVG(Score)
FROM Review * Book * WrittenBy * Author
WHERE AuthorName LIKE '%Pratchett%';