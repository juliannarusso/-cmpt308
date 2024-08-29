--3. List thirty-something characters (characters who are in their 30s) on shows which were on the air at some point during the 1980s. (Give the character name, the show name, the start date and end date of the show.)--

CREATE OR REPLACE VIEW TVQUERY3 AS 
SELECT DISTINCT  CH.char_name, SH.show_name,SH.start_month, SH.start_year, SH.end_month, SH.end_year
FROM zCharacter CH, zTVShow SH, zPlay Pl
WHERE CH.char_num = Pl.char_num 
AND Pl.show_num = SH.show_num 
AND CH.char_age LIKE '3%'
AND ((SH.start_year LIKE '198%') OR (SH.end_year LIKE '198%'));
