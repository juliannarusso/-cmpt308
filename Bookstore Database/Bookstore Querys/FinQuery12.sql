--FinQuery12.sql--
CREATE OR REPLACE VIEW FinQuery12 AS 
SELECT E.EditorName, B.BookTitle, A.AuthorName, P.PublisherName, B.PublicationYear
FROM zBook B, zBookEditor BE, zEditor E, zBookAuthor BA, zAuthors A, zBookPublisher BP, zPublisher P
WHERE E.EditorID = BE.EditorID
    AND BE.BookID = B.BookID
    AND B.BookID = BA.BookID
    AND BA.AuthorID = A.AuthorID
    AND B.BookID = BP.BookID
    AND BP.PublisherID = P.PublisherID
    AND B.PublicationYear >= 1920
    AND B.PublicationYear <= 1955
GROUP BY E.EditorName, B.bookTitle, A.AuthorName, P.PublisherName, B.PublicationYear
HAVING COUNT(BE.BookID) = 1;