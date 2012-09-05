delete from creature_linking_template where entry in (14988,15117);
insert into creature_linking_template values
(14988,309,11382,4096,0),
(15117,309,11382,4096,0);
UPDATE quest_template SET ReqSpellCast1=0 WHERE entry IN (1779,1781,9600,9685);