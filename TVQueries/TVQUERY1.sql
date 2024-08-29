--1. *** List the characters on shows sponsored by _____. (Give the character name and TVshow name.) (Use Levis in your printed results.)

	CREATE OR REPLACE VIEW TVQUERY1 AS
SELECT CH.CHAR_NAME, SH.SHOW_NAME
FROM ZCHARACTER CH, ZPLAY PL, ZTVSHOW SH
WHERE CH.CHAR_NUM = PL.CHAR_NUM
AND PL.SHOW_NUM = SH.SHOW_NUM
AND PL.SHOW_NUM IN
(SELECT SPB.SHOW_NUM
FROM ZSPONSORBY SPB
WHERE SPB.SPONSOR_NUM IN
            (SELECT SP.SPONSOR_NUM
            FROM ZSPONSOR SP 
            WHERE SP.SPONSOR_NAME = '&Sponsor'
            )
);
