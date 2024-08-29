-- 10.*** Name shows that are somehow associated with parent company ____. This means that if ____ is a parent company for anything related to the show (sponsor, network, etc.), then you should list that show. (Give the show name and network.) (Use RCA in your printed results.)--

CREATE OR REPLACE VIEW TVQUERY10 AS  
SELECT SH.show_name AS ShowName, SH.network_id AS Network
FROM zTVShow SH
WHERE SH.distrID IN (
    SELECT distrID
    FROM zDistributor D
    WHERE D.parent_num IN (
        SELECT parent_num
        FROM zParentComp
        WHERE parent_name = '&ParentCompany'
        )
    )
    UNION
SELECT SH.show_name AS ShowName, SH.network_id AS Network
FROM zTVShow SH
WHERE SH.network_id IN (
    SELECT network_id
    FROM zNetwork N
    WHERE N.parent_num IN (
        SELECT parent_num
        FROM zParentComp
        WHERE parent_name = '&ParentCompany'
    )
);
