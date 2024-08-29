--FinQuery18.sql ---
CREATE OR REPLACE VIEW FinQuery18 AS
SELECT DISTINCT B.BookTitle, A.AuthorName, B.Genere, B.Price
FROM zBook B
JOIN zBookAuthor BA ON B.BookID = BA.BookID
JOIN zAuthors A ON BA.AuthorID = A.AuthorID
WHERE B.Genere LIKE '%Fiction'
ORDER BY A.AuthorName;
