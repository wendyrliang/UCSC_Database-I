-- Ruiwen Liang
-- rliang4@ucsc.edu
-- CS180 Lab2
-- query4.sql

SELECT DISTINCT reviewerID, bookID
FROM Reviews
WHERE reviewStars <> 4  --reviewStars isn't 4
  AND bookID IN 
     (SELECT bookID
      FROM Books
      WHERE bookName = 'Jane Eyre')  --Book is named 'Jane Eyre'
  AND reviewerID IN 
     (SELECT memberID
      FROM Members
      WHERE memberName = 'John Smith');  --Reviewer name is 'John Smith'
