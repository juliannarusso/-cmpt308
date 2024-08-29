-- 4) Get the names of shows, and awards they won if any at all, NULLS are allowed on the right side of the table. --

CREATE OR REPLACE VIEW TVQUERY4 AS 
SELECT  zTVShow.show_name, zReceives.awardID
FROM zTVShow LEFT JOIN zReceives ON zTVShow.show_num= zReceives.show_num;
