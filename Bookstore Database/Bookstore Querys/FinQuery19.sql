--FinQuery19--
CREATE OR REPLACE VIEW FinQuery19 AS   
SELECT DISTINCT E.EditorID, E.EditorName
FROM zEditor E
WHERE E.EditorID IN (
        SELECT BE.EditorID
        FROM zBookEditor BE
        WHERE BE.BookID IN (
            SELECT BP.BookID
            FROM zBookPublisher BP
            WHERE BP.PublisherID IN (
                SELECT P.PublisherID
                FROM zPublisher P
                WHERE P.PublisherCity = 'Manchester'
            )
        )
    );
