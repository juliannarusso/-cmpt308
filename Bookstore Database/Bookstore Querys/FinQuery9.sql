--FinQuery9.sql--
CREATE OR REPLACE VIEW FinQuery9 AS 
SELECT  AW.AwardName, B.BookTitle
FROM zBookEarn BE
RIGHT JOIN zAwards AW ON BE.AwardID = AW.AwardID
RIGHT JOIN zBook B ON BE.BookID = B.BookID;