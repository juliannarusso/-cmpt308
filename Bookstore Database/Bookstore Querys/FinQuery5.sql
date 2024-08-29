--FinQuery5--
CREATE OR REPLACE VIEW FinQuery5 AS 
SELECT DISTINCT E.EditorName
FROM zEditor E
WHERE NOT EXISTS (
    SELECT *
    FROM zBookEditor BE
    JOIN zBook B ON BE.BookID = B.BookID
    WHERE BE.EditorID = E.EditorID
    AND (B.Genere = '%fiction' OR B.Price >= 14.99)
);
