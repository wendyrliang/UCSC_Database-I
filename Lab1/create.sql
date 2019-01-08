/* Ruiwen Liang
   rliang4
   cs180-Lab1
   create.sql */

CREATE TABLE Authors (
   authorID INT,
   authorName VARCHAR(30),
   address VARCHAR(30),
   numBooksWritten INT,
   mostRecentPubDate DATE,
   PRIMARY KEY(authorID)
);

CREATE TABLE Books (
   bookID CHAR(6),
   authorID INT,
   bookName VARCHAR(30),
   publisherID INT,
   pubDate DATE,
   price DECIMAL(6, 2),
   category CHAR(1),
   lastOrderDate DATE,
   totalOrdered INT,
   PRIMARY KEY(bookID)
);

CREATE TABLE Publishers (
   publisherID INT,
   publisherName VARCHAR(30),
   address VARCHAR(30),
   PRIMARY KEY(publisherID)
);

CREATE TABLE Members (
   memberID INT,
   memberName VARCHAR(30),
   joinDate DATE,
   renewalDate DATE,
   isCurrentMember BOOLEAN,
   PRIMARY KEY(memberID)
);

CREATE TABLE Orders (
   memberID INT,
   bookID CHAR(6),
   orderDate DATE,
   quantity INT,
   PRIMARY KEY(memberID, bookID, orderDate)
);

CREATE TABLE Reviews (
   reviewerID INT,
   bookID CHAR(6),
   reviewDate DATE,
   reviewStars INT,
   PRIMARY KEY(reviewerID, bookID)
);
