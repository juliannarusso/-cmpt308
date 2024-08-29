-- 3) Get the names and the location of networks and distributors that share the same location.--

CREATE OR REPLACE VIEW TV2QUERY3 AS 
SELECT zNETWORK.network_id AS NETWORK_NAME, zDISTRIBUTOR.distr_name, zNETWORK.network_hq AS Location
FROM zNETWORK JOIN zDISTRIBUTOR ON zNETWORK.network_hq = zDISTRIBUTOR.distr_loc; 
