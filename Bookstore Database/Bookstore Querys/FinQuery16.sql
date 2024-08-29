--FinQuery16.sql--
CREATE OR REPLACE VIEW FinQuery16 AS
SELECT B.BookISBN, B.BookTitle,A.AuthorName, E.EditorName, P.PublisherName, B.PublicationYear, B.Genere, B.Numpages, B.Price, B.QOH
FROM zBook B JOIN zBookAuthor BA ON B.BookID = BA.BookID
JOIN zAuthors A ON BA.AuthorID = A.AuthorID
JOIN zBookEditor BE ON B.BookID = BE.BookID
JOIN zEditor E ON BE.EditorID = E.EditorID
JOIN zBookPublisher BP ON B.BookID = BP.BookID
JOIN zPublisher P ON BP.PublisherID = P.PublisherID
WHERE
    A.AuthorName = '&Author';
    