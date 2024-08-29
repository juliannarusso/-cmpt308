--FinQuery3--
CREATE OR REPLACE VIEW FinQuery3 AS 
SELECT P.PublisherName 
FROM zPublisher P
WHERE NOT EXISTS (
    SELECT *
    FROM zBookPublisher BP 
    WHERE BP.PublisherID = P.PublisherID 
    AND NOT EXISTS (
    SELECT *
    FROM zBookEarn BE 
    WHERE BE.BookID = BP.BookID 
    )
    );
