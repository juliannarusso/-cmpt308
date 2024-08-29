--FinQuery17.sql--
CREATE OR REPLACE VIEW FinQuery17 AS
SELECT S.SeriesName, A.AuthorName, B.Genere, SUM(B.QOH) AS TotalQOH
FROM zBook B JOIN zBookAuthor BA ON B.BookID = BA.BookID
JOIN zAuthors A ON BA.AuthorID = A.AuthorID
JOIN zBookSeries BS ON B.BookID = BS.BookID
JOIN zSeries S ON BS.SeriesID = S.SeriesID
WHERE  B.Genere = '&Genere'
GROUP BY S.SeriesName, A.AuthorName, B.Genere;