--FinQuery7.sql--
CREATE OR REPLACE VIEW FinQuery7 AS 
SELECT DISTINCT S.SeriesName
FROM zSeries S
WHERE NOT EXISTS (
    SELECT *
    FROM zBook B
    WHERE B.SeriesID = S.SeriesID
    AND EXISTS (
        SELECT *
        FROM zBookEarn BE
        WHERE BE.BookID = B.BookID
    )
) AND NOT EXISTS (
    SELECT *
    FROM zBookSeries BS
    WHERE BS.SeriesID = S.SeriesID
    AND EXISTS (
        SELECT *
        FROM zBookAuthor BA
        WHERE BA.BookID = BS.BookID
        AND EXISTS (
            SELECT *
            FROM zAuthorEarns AE
            WHERE AE.AuthorID = BA.AuthorID
        )
    )
);