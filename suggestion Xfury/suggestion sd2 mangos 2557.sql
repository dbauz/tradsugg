/* Set movement type = 0 for these mobs (heroic entries as well)*/
UPDATE creature_template SET MovementType=0 WHERE entry IN (17838,17879,17880,21104,17839,21697,21698,18553,17835,21818,17892,18994,18995,17881,21862,18625);
UPDATE creature_template SET MovementType=0 WHERE entry IN (20738,20745,22171,22172,21712,22167,22164,22169,20741,22166,22168,20737);
UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry=17838;
/* Set correct factions for the Chrono Lord and Timereaver*/
UPDATE creature_template SET faction_A=168, faction_H=168 WHERE entry IN (21697,21698,21712,22167);
/*Unit flags*/
UPDATE creature_template SET unit_flags=unit_flags|768, npcflag=npcflag&~2 WHERE entry=15608;
UPDATE creature_template SET unit_flags=unit_flags|33536 WHERE entry=17023;
UPDATE creature_template SET unit_flags=unit_flags|33554688 WHERE entry IN (21862,18625,17838,18553,18555);
/*Missing spawns*/
DELETE FROM creature WHERE id IN (21862,18625,15608);
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(21862, 269, 3, 1, 0, 0, -2025.52, 7119.707, 22.74707, 3.071779, 7200, 0, 0, 5589, 0, 0, 0),
(18625, 269, 3, 1, 0, 0, -2025.422, 7119.652, 22.74706, 6.161012, 7200, 0, 0, 5589, 0, 0, 0),
(18625, 269, 3, 1, 0, 0, -2024.31, 7127.75, 22.65419, 0.4712389, 7200, 0, 0, 5589, 0, 0, 0),
(18625, 269, 3, 1, 0, 0, -2033.517, 7110.752, 22.85045, 2.635447, 7200, 0, 0, 5589, 0, 0, 0),
(15608, 269, 3, 1, 0, 0, -2025.295, 7119.58, 22.74709, 3.001966, 300, 0, 0, 6070400, 0, 0, 0);
/* Creature template addon*/
DELETE FROM creature_template_addon WHERE entry IN (15608,21862,18553,18555);
INSERT INTO creature_template_addon VALUES
(15608,0,0,0,0,0,0,'31635 31556'),
(21862,0,0,0,0,0,0,'32570'),
(18553,0,0,0,0,0,0,'32563'),
(18555,0,0,0,0,0,0,'32566');
/* This will handle the event reset and despawn all summons in case Medivh is killed*/
Delete from creature_linking_template where entry in (17838,17879,17880,17881,21697,21698,21104,17839,17835,21818,17892,18994,18995,18553);
insert into creature_linking_template values
(17838,269,15608,16,0),
(17879,269,15608,16,0),
(17880,269,15608,16,0),
(17881,269,15608,16,0),
(21697,269,15608,16,0),
(21698,269,15608,16,0),
(21104,269,15608,16,0),
(17839,269,15608,16,0),
(17835,269,15608,16,0),
(21818,269,15608,16,0),
(17892,269,15608,16,0),
(18994,269,15608,16,0),
(18995,269,15608,16,0),
(18553,269,15608,16,0);