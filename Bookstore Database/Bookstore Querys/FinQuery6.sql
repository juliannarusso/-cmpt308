
--FinQuery6--
CREATE OR REPLACE VIEW FinQuery6 AS
SELECT DISTINCT E.EditorID, E.EditorName
FROM zEditor E
JOIN zBookEditor BE ON E.EditorID = BE.EditorID
JOIN zBook B ON BE.BookID = B.BookID
JOIN zBookEarn BEA ON b.BookID = BEA.BookID
WHERE
    NOT EXISTS (
        SELECT *
        FROM zBookEarn BEA_inner
        WHERE
            BEA_inner.BookID = B.BookID
            AND BEA_inner.AwardID IS NULL
    );
