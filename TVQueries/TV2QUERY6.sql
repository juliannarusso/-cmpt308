-- 6) Get the names of producers, and any awards they have won, if any, allow for null values to be on either the right and/or left side of the table. --

SELECT zProducer.prod_name, zEarns.awardID
FROM zProducer FULL JOIN zEarns ON zProducer.prod_num = zEarns.prod_num;