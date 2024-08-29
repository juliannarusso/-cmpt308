--FinQuery11.sql--
CREATE OR REPLACE VIEW FinQuery11 AS
SELECT B.BookID, B.BookTitle,A.AuthorName, P.PublisherName
FROM zBook B
FULL JOIN zBookAuthor BA ON B.BookID = BA.BookID
FULL JOIN zAuthors A ON BA.AuthorID = A.AuthorID
FULL JOIN zBookPublisher BP ON B.BookID = BP.BookID
FULL JOIN zPublisher P ON BP.PublisherID = P.PublisherID;
