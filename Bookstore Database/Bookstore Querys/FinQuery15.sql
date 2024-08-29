--FinQuery15.sql--
CREATE OR REPLACE VIEW FinQuery15 AS
SELECT DISTINCT  B1.BookTitle,  A.AuthorName, B1.PublicationYear
FROM zBook B1, zBookAuthor BA1, zAuthors A, zBook B2, zBookAuthor BA2
WHERE B1.BookID = BA1.BookID
    AND A.AuthorID = BA1.AuthorID
    AND B1.BookID <> B2.BookID
    AND B2.BookID = BA2.BookID
    AND A.AuthorID = BA2.AuthorID
    AND ABS(B1.PublicationYear - B2.PublicationYear) >= 3
ORDER BY
    A.AuthorName;