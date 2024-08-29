-- 6.A spin-off is a show that was created from another “parent" show. Identify the spinoffs that appeared on a different network than their parent show. (Give the spinoff, its network, its parent show and the parent show’s network.) --

CREATE OR REPLACE VIEW TVQUERY6 AS 
SELECT DISTINCT SH1.show_name AS spinoff, sh1.network_ID AS spinoff_network, SH2.show_name AS parent_show, sh2.network_id AS parent_network 
FROM zSpinoff SP, zTVShow SH1, zTVShow SH2 
WHERE SP.spinoff_num = SH1.show_num 
AND SP.parent_num = SH2.show_num 
AND SH1.network_ID <> SH2.network_ID;
