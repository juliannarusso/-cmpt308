--2. FinQuery2--
CREATE OR REPLACE VIEW FinQuery2 AS
SELECT DISTINCT A.AuthorName
FROM zAuthors A
WHERE EXISTS (
    SELECT *
    FROM zBookAuthor BA
    WHERE BA.AuthorID = A.AuthorID
    AND EXISTS (
        SELECT *
        FROM zBook B
        WHERE B.BookID = BA.BookID
        AND B.Genere = 'Self-Help'
    )
);