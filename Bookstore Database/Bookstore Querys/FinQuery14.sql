--FinQuery14.sql--
CREATE OR REPLACE VIEW FinQuery14 AS 
SELECT DISTINCT B1.BookTitle AS BookTitle, A1.AuthorName AS AuthorName, S.SeriesName
FROM zBook  B1,  zBook  B2,  zBookAuthor  BA1, zBookAuthor  BA2,  zAuthors  A1, zAuthors A2,  zSeries  S
WHERE   B1.SeriesID = B2.SeriesID
    AND B1.BookID <> B2.BookID
    AND BA1.BookID = B1.BookID
    AND BA2.BookID = B2.BookID
    AND A1.AuthorID = BA1.AuthorID
    AND A2.AuthorID = BA2.AuthorID
    AND S.SeriesID = B1.SeriesID
    AND A1.AuthorID <> A2.AuthorID;