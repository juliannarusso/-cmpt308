 --FinQuery8.sql--
CREATE OR REPLACE VIEW FinQuery8 AS 
SELECT A.AuthorName, AW.AwardName
FROM zAuthors A 
LEFT JOIN  zAuthorEarns AE  ON A.AuthorID = AE.AuthorID
LEFT JOIN zAwards AW ON AE.AwardID = AW.AwardID;
