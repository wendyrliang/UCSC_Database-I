-- Ruiwen Liang
-- rliang4@ucsc.edu
-- CS180 lab2
-- create.sql

CREATE TABLE Authors (
  authorID          INTEGER PRIMARY KEY,
  authorName        VARCHAR(30),
  address           VARCHAR(30),
  numBooksWritten   INTEGER,
  mostRecentPubDate DATE
) ;

CREATE TABLE Books (
  bookID        CHAR(6) PRIMARY KEY,
  authorID      INTEGER NOT NULL,
  bookName      VARCHAR(30) NOT NULL,
  publisherID   INTEGER NOT NULL,
  pubDate       DATE,
  price         DECIMAL(6,2),
  category      CHAR(1),
  lastOrderDate DATE,
  totalOrdered  INTEGER,
  UNIQUE(authorID, bookName)
) ;

CREATE TABLE Publishers (
  publisherID   INTEGER PRIMARY KEY,
  publisherName VARCHAR(30) NOT NULL,
  address       VARCHAR(30),
  UNIQUE (publisherName)
) ;

CREATE TABLE Members (
  memberID        INTEGER PRIMARY KEY,
  memberName      VARCHAR(30) NOT NULL,
  joinDate        DATE NOT NULL,
  renewalDate     DATE,
  isCurrentMember BOOLEAN,
  UNIQUE (memberName, joinDate)
) ;

CREATE TABLE Orders (
  memberID  INTEGER,
  bookID    CHAR(6),
  orderDate DATE,
  quantity  INTEGER NOT NULL,
  PRIMARY KEY (memberID, bookID, orderDate)
) ;

CREATE TABLE Reviews (
  reviewerID  INTEGER,
  bookID      CHAR(6),
  reviewDate  DATE,
  reviewStars INTEGER NOT NULL,
  PRIMARY KEY (reviewerID, bookID)
) ;
