--4. Sometimes, an actor plays more than one character on a TV show. List these actors and the characters they played. (Give the actor’s name and the character’s name. You’ll have a record for each actor/character pair.--

CREATE OR REPLACE VIEW TVQUERY4 AS 
SELECT DISTINCT act.actor_name, ch.char_name
FROM zActor act, zCharacter CH, zPlay PlF, zPlay PlS 
WHERE act.actor_num=PlF.actor_num 
AND act.actor_num = PlS.actor_num
AND PlF.show_num = PlS.show_num 
AND PlF.char_num <> PlS.char_num 
AND CH.char_num = PlF.char_num;
