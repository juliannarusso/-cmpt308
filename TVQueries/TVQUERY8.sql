-- 8.List awards from the 1970s that, according to the current data in the database, were not awarded. (Give the award ID, award name, award type, and award year.)--

CREATE OR REPLACE VIEW TVQUERY8 AS
SELECT AW.AWARDID, AW.AWARD_NAME, AW.AWARD_TYPE, AW.AWARD_YEAR
FROM ZAWARD AW
WHERE AW.AWARD_YEAR LIKE '197%'
AND AW.AWARDID NOT IN
    (SELECT RE.AWARDID
    FROM ZRECEIVES RE
    UNION 
    SELECT EA.AWARDID
    FROM ZEARNS EA    
    UNION    
    SELECT WIN.AWARDID
    FROM ZWINS WIN
    );
