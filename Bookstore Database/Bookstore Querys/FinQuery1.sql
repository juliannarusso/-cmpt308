--1.FinQuery1--
CREATE OR REPLACE VIEW FinQuery1 AS 
SELECT DISTINCT b.bookTitle
From zbook b, zAuthors A, zbookAuthor bA 
WHERE A.AuthorName = 'J.K Rowling'
AND A.AuthorID = bA.AuthorID 
AND bA.bookID = b.bookID; 