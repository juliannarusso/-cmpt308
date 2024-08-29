--FinQuery10.sql--
CREATE OR REPLACE VIEW FinQuery10 AS 
SELECT
S.SeriesName, B.BookTitle
FROM
    zBook B
FULL OUTER JOIN
    zBookSeries BS ON B.BookID = BS.BookID
FULL OUTER JOIN
    zSeries S ON BS.SeriesID = S.SeriesID;
