--FinQuery13.sql--
CREATE OR REPLACE VIEW FinQuery13 AS
SELECT  B.BookTitle, B.Price, PUB.PublisherName, PUB.PublisherCity
FROM zBook B JOIN zBookPublisher BP ON B.BookID = BP.BookID
JOIN zPublisher PUB ON BP.PublisherID = PUB.PublisherID
WHERE B.Price > 10
AND PUB.PublisherCity = 'New York';
