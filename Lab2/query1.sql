-- Ruiwen Liang
-- rliang4@ucsc.edu
-- CS180 Lab2
-- query1.sql

SELECT DISTINCT authorID, authorName
FROM Authors
WHERE authorName NOT LIKE 'S%'   --Author name doesn't begin with S
ORDER BY authorName DESC;        --Descending order of authorName
