--FinQuery4--
CREATE OR REPLACE VIEW FinQuery4 AS
SELECT DISTINCT P.PublisherName, P.PublisherCity 
FROM zPublisher P 
JOIN zBookPublisher BP ON P.PublisherID = BP.PublisherID 
JOIN zBook B ON BP.BookID=B.BookID 
WHERE B.Genere ='Romance' 
AND NOT EXISTS ( 
    SELECT * 
    FROM zBook B2
    WHERE B2.Genere<>'Romance' 
    AND B2.BookID = B.BookID 
    );
