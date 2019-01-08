-- Ruiwen Liang
-- rliang4@ucsc.edu
-- CS180 Lab2
-- query2.sql

SELECT quantity, orderDate AS oDate
FROM Orders
WHERE memberID IN
      --isCurrentMember is TRUE
     (SELECT memberID
      FROM Members
      WHERE isCurrentMember = TRUE);
