-- 7.Name producers who have either won no awards or have produced a show that won no awards. (Give the producer’s name and age.)--

CREATE OR REPLACE VIEW TVQUERY7 AS
SELECT PR.PROD_NAME, PR.PROD_AGE
FROM ZPRODUCER PR
WHERE PR.PROD_NUM NOT IN
    (SELECT EA.PROD_NUM
    FROM ZEARNS EA)
OR PR.PROD_NUM IN
    (SELECT PB.PROD_NUM
    FROM ZPRODBY PB
    WHERE PB.SHOW_NUM NOT IN
        (SELECT RE.SHOW_NUM
        FROM ZRECEIVES RE)
    );
