/*
 * Ruiwen Liang
 * rliang4
 * CS180 lab3
 * unittests.sql
 * unit tests for constraints
 */

/* Unit test for Books foreign key constraint */
INSERT INTO Books
VALUES ('wwwwww', 001, 'Foe Without A Home', 92152, CURRENT_DATE, 9300.65, 'F', CURRENT_DATE+1, 19);

/* Unit test for Orders foreign key constraint */
INSERT INTO Orders
VALUES (4843, 'zzzzzz', CURRENT_DATE, 10);

/* Unit test for Reviews foreign key constraint */
INSERT INTO Reviews
VALUES (0001, 'ccfyls', CURRENT_DATE, 5);

/* Unit tests for Orders general constraint */
UPDATE Orders
SET quantity = 100
WHERE memberID = 4843;

UPDATE Orders
SET quantity = -100
WHERE memberID = 4843;

/* Unit tests for Books general constraint */
UPDATE Books
SET lastOrderDate = CURRENT_DATE
WHERE bookID  = 'ccfyls';

UPDATE Books
SET lastOrderDate = pubDate-1
WHERE bookID = 'ccfyls';

/* Unit tests for Members general constraint */
UPDATE Members
SET joinDate = NULL, isCurrentMember = NULL
WHERE memberID = 4843;

UPDATE Members
SET isCurrentMember = 'TRUE'
WHERE memberID = 4843;
