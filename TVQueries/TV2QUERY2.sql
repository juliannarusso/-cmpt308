--2) Get the award name, type, and year for shows that have won awards, and the name of the show.--

CREATE OR REPLACE VIEW TV2QUERY2 AS 
SELECT award_name, award_type, award_year, show_name
FROM zAWARD JOIN zRECEIVES USING(awardID)
JOIN zTVShow USING (show_num);
