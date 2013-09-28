-- fix creature stats
UPDATE creature_template SET minlevel=83, maxlevel=83, minhealth=13945, maxhealth=13945, faction_A=190, faction_H=190, unit_flags=unit_flags|33554432 WHERE entry=34246;
UPDATE creature_template SET faction_A=190, faction_H=190 WHERE entry=32871;
UPDATE creature_template SET minlevel=80, maxlevel=80, minhealth=75600, maxhealth=75600, unit_flags=unit_flags|33536 WHERE entry IN (33235,34064,33956,33957);
UPDATE creature_template SET minlevel=74, maxlevel=74, minhealth=10282, maxhealth=10282, faction_A=14, faction_H=14, unit_flags=unit_flags|33554432 WHERE entry IN (33104,33105);
UPDATE creature_template SET minlevel=81, maxlevel=81, minhealth=45616, maxhealth=45616, faction_A=14, faction_H=14, unit_flags=unit_flags|32768 WHERE entry=34097;
UPDATE creature_template SET minlevel=81, maxlevel=81, minhealth=260660, maxhealth=260660, faction_A=14, faction_H=14, unit_flags=unit_flags|33587200 WHERE entry=33052;
UPDATE creature_template SET minlevel=81, maxlevel=81, minhealth=19550, maxhealth=19550, faction_A=14, faction_H=14 WHERE entry=33089;
UPDATE creature_template SET minlevel=80, maxlevel=80, minhealth=88200, maxhealth=88200, faction_A=14, faction_H=14 WHERE entry=32955;
UPDATE creature_template SET RegenHealth=0 WHERE entry=32955;
UPDATE creature_template SET minlevel=80, maxlevel=80, minhealth=12600, maxhealth=12600, faction_A=14, faction_H=14, unit_flags=unit_flags|33554432 WHERE entry IN (34099,34100);
-- guesswork
UPDATE creature_template SET minlevel=81, maxlevel=81, faction_A=14, faction_H=14, unit_flags=unit_flags|33554432 WHERE entry=32953;
-- missing chests (ytdb)
DELETE FROM gameobject WHERE guid IN (200009,200010);
INSERT INTO gameobject VALUES
(200009, 194821, 603, 1, 65535, 1632.53, -295.983, 417.322, 1.56774, 0, 0, 0.706025, 0.708187, -604800, 100, 1),
(200010, 194822, 603, 2, 65535, 1632.53, -295.983, 417.322, 1.56774, 0, 0, 0.706025, 0.708187, -604800, 100, 1);
-- fix GO phasemasks
UPDATE gameobject SET phaseMask=phaseMask|16 WHERE id IN (194148,194715,194910);
-- ToDo: spawn many creatures of entry 33089 in phaseMask 16 in the Celestial Planetarium area. They should have short respawn time

DELETE FROM spell_script_target WHERE entry IN (64996,62304,64597);
INSERT INTO spell_script_target VALUES
(64996, 1, 34246, 0),
(62304, 1, 33104, 0),
(64597, 1, 33104, 0);
UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry IN (33052);