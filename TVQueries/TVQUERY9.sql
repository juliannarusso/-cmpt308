-- 9. Name award-winning shows that have featured award-winning actor(s) and were produced by award-winning producer(s). (Give the show names and their network.)--

CREATE OR REPLACE VIEW TVQUERY9 AS
SELECT SH.SHOW_NAME, SH.NETWORK_ID
FROM ZTVSHOW SH
WHERE SH.SHOW_NUM IN
    (SELECT PB.SHOW_NUM
    FROM ZPRODBY PB
    WHERE PB.PROD_NUM IN(
        SELECT E.PROD_NUM
        FROM ZEARNS E
    ))
AND SH.SHOW_NUM IN
    (SELECT PL.SHOW_NUM
    FROM ZPLAY PL
    WHERE PL.ACTOR_NUM IN
        (SELECT W.ACTOR_NUM
        FROM ZWINS W)
    )
AND SH.SHOW_NUM IN(
    SELECT R.SHOW_NUM
    FROM ZRECEIVES R
);
