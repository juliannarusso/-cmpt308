--5)Get the parent name and the network ID if there is any at all, NULL values are allowed on the left side of the table--
CREATE OR REPLACE VIEW TVQUERY5 AS 
SELECT zNetwork.network_id, zParentComp.parent_name
FROM zNetwork RIGHT JOIN zParentComp ON zNetwork.parent_num = zParentComp.parent_num;
