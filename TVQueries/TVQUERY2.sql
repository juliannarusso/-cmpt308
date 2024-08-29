-- 2.Name producers of TV shows distributed by a company whose headquarters are in Los Angeles. (Give the producer’s name, the TVShow name, the distributor’s name, and the distributor’s location.)--
	
CREATE OR REPLACE VIEW TVQUERY2 AS 
SELECT DISTINCT Pr.prod_name, SH.show_name, dist.distr_name, dist.distr_loc 
FROM zProducer Pr , zDistributor dist, zTVShow SH
WHERE SH.distrID = dist.distrID 
AND dist.distr_loc ='Los Angeles'; 
