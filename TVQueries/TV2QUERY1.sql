--1) Get the actor number and name, and their agent’s name and number--

CREATE OR REPLACE VIEW TV2QUERY1 AS 
SELECT actor_num, actor_name, agent_num, agent_name
FROM zActor NATURAL JOIN zAgent;
