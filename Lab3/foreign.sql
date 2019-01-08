/*
 * Ruiwen Liang
 * rliang4
 * CS180 lab3
 * foreign.sql
 * adding foreign key constraints
 */

/* Adding foreign key for Books */
ALTER TABLE Books
  ADD FOREIGN KEY (authorID)
  REFERENCES Authors(authorID);

/* Adding foreign key for Orders */
ALTER TABLE Orders
  ADD FOREIGN KEY (bookID)
  REFERENCES Books(bookID);

/* Adding foreign key for Reviews */
ALTER TABLE Reviews
  ADD FOREIGN KEY (reviewerID)
  REFERENCES Members(memberID);
