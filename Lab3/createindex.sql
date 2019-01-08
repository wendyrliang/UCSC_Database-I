/*
 * Ruiwen Liang
 * rliang4
 * CS180 lab3
 * createindex.sql
 * create an index named LookUpOrders over the bookID and memberID columns
 */

CREATE INDEX LookUpOrders ON Orders(bookID, memberID);
