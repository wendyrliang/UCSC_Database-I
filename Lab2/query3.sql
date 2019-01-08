-- Ruiwen Liang
-- rliang4@ucsc.edu
-- CS180 Lab2
-- query3.sql

SELECT DISTINCT a.authorName, p.publisherName
FROM Authors a, Publishers p,
    --category = 'N' and price greater or equal to 19.99 
    (SELECT b.authorID, b.publisherID
     FROM Books b
     WHERE b.category = 'N' AND b.price >= 19.99) t
WHERE a.authorID = t.authorID 
  AND p.publisherID = t.publisherID;
