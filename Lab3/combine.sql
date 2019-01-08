/*
 * Ruiwen Liang
 * rliang4
 * CS180 Lab3
 * combine.sql
 * combining Members and NewMemberships
 */

/* Insert if new member is not already in Members */
INSERT INTO Members (memberID, memberName, joinDate, renewalDate, isCurrentMember)
SELECT memberID, memberName, CURRENT_DATE, renewalDate, 'TRUE'
FROM NewMemberships
WHERE NewMemberships.memberID NOT IN (SELECT memberID
                                      FROM Members);

/* Update if new member is in Members */
UPDATE Members
SET memberName = NewMemberships.memberName,
    renewalDate = NewMemberships.renewalDate,
    isCurrentMember = 'TRUE'
FROM NewMemberships
WHERE NewMemberships.memberID = Members.memberID;
