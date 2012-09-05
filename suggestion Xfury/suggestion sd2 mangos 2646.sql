update creature_template set unit_flags=unit_flags&~33554432 where entry=17096;
UPDATE `creature_template` SET MovementType=0 WHERE entry in (17007,19872,19873,19874,19875,19876);
DELETE FROM creature_linking_template WHERE entry IN (17007,19872,19873,19874,19875,19876);
INSERT INTO creature_linking_template VALUES
(17007,532,15687,3,0),
(19872,532,15687,3,0),
(19873,532,15687,3,0),
(19874,532,15687,3,0),
(19875,532,15687,3,0),
(19876,532,15687,3,0);