/*
 * Ruiwen Liang
 * rliang4
 * CS180 lab3
 * createviews.sql
 * create two views GreatPublishers and BadBookTotals
 */

CREATE VIEW GreatPublishers AS
  SELECT publisherID, COUNT(bookID) AS numReviewedPublished
  FROM Books
  WHERE bookID IN (SELECT bookID
                   FROM Reviews
                   WHERE reviewStars >= 3) AND
        publisherID IN (SELECT publisherID
                        FROM Publishers)
  GROUP BY publisherID
  HAVING COUNT(bookID) >= 2;

CREATE VIEW BadBookTotals AS
  SELECT b.bookID, b.totalOrdered, SUM(o.quantity) AS badQuantitySum
  FROM Books b, Orders o
  WHERE b.totalOrdered <> o.quantity
  GROUP BY b.bookID;
