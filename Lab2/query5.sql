-- Ruiwen Liang
-- rliang4@ucsc.edu
-- CS180 Lab2
-- query5.sql

SELECT DISTINCT m.memberID, m.joinDate
FROM Members m
WHERE m.memberID IN
     --Member who reviewd a book
     (SELECT r.reviewerID
      FROM Reviews r
      WHERE r.bookID IN 
           (SELECT b.bookID
            FROM Books b
            --PUblished after April 1, 2010
            WHERE b.pubDate > DATE'01/04/10'
              AND b.authorID IN
                 --authorName is the same as the reviewer 
                 (SELECT a.authorID
                  FROM Authors a
                  WHERE a.authorName = m.memberName)));
