/*
 * Ruiwen Liang
 * rliang4
 * CS180 lab3
 * general.sql
 * adding general constraints
 */

ALTER TABLE Orders
  ADD CONSTRAINT positive_quantity
  CHECK (quantity > 0);

ALTER TABLE Books
  ADD CONSTRAINT date_check
  CHECK (lastOrderDate >= pubDate);

/* Unsolved problem!!! */
ALTER TABLE Members
  ADD CONSTRAINT null_check
  CHECK (
    (joinDate IS NULL AND isCurrentMember IS NULL) OR 
    (joinDate IS NOT NULL AND isCurrentMember IS NULL) OR
    (joinDate IS NOT NULL AND isCurrentMember IS NOT NULL));

