-- *** Halion ***
-- Spawns
-- Halion controller
DELETE FROM creature WHERE id=40146;
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(40146, 724, 15, 1, 0, 0, 3156.037, 533.2656, 72.97205, 0.72, 604800, 0, 0, 1, 0, 0, 0);
-- Halion twilight
DELETE FROM creature WHERE id=40142;
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(40142, 724, 15, 32, 0, 0, 3156.625, 533.2674, 72.97205, 0, 604800, 0, 0, 11156000, 0, 0, 0);
-- Note: orb totation focus not yet spawned because the sniff coords are off compared to actual map

-- Twilight flame ring
DELETE FROM gameobject WHERE id=203624;
INSERT INTO gameobject (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(203624, 724, 15, 32, 3157.372, 533.9948, 72.8887, -1.420596, 0, 0, 0, 0, 7200, 255, 1);

-- rotation focus script target
delete from spell_script_target where entry=74758;
insert into spell_script_target values
(74758,1,40091,0);

-- Halion linking
DELETE FROM creature_linking_template WHERE entry IN (40001, 40029, 40135, 40083, 40100, 40468, 40469, 40081, 40091, 40681, 40683, 40041, 40042, 40043, 40044, 40055);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(40001, 724, 39863, 4112, 0),
(40029, 724, 39863, 4112, 0),
(40135, 724, 39863, 4112, 0),
(40083, 724, 39863, 4112, 0),
(40100, 724, 39863, 4112, 0),
(40468, 724, 39863, 4112, 0),
(40469, 724, 39863, 4112, 0),
(40081, 724, 39863, 4112, 0),
(40091, 724, 39863, 4112, 0),
(40681, 724, 39863, 4112, 0),
(40683, 724, 39863, 4112, 0),
(40041, 724, 39863, 4112, 0),
(40042, 724, 39863, 4112, 0),
(40043, 724, 39863, 4112, 0),
(40044, 724, 39863, 4112, 0),
(40055, 724, 39863, 4112, 0);

-- Halion data (ytdb & sniff)
UPDATE creature_template SET minhealth=11156000, maxhealth=11156000, armor=10627, faction_A=14, faction_H=14, rank=3, mindmg=468, maxdmg=702, attackpower=175, dmg_multiplier=74.2, baseattacktime=2000,
 rangeattacktime=2000, unit_flags=32832, minrangedmg=374, maxrangedmg=562, rangedattackpower=140 WHERE entry=39863;
UPDATE creature_template SET difficulty_entry_1=40143, difficulty_entry_2=40144, difficulty_entry_3=40145, minhealth=11156000, maxhealth=11156000, minlevel=83, maxlevel=83, faction_A=14, faction_H=14, rank=3, mindmg=468,
 maxdmg=702, attackpower=175, dmg_multiplier=74.6, baseattacktime=2000, rangeattacktime=2000, unit_flags=32832, minrangedmg=374, maxrangedmg=562, rangedattackpower=140 WHERE entry=40142;
UPDATE creature_template SET faction_A=14, faction_H=14, unit_flags=33554688 WHERE entry=40146;

-- Orbs (sniff)
UPDATE creature_template SET minlevel=80, maxlevel=80, faction_A=14, faction_H=14, unit_flags=33554688, vehicle_id=718 WHERE entry=40081;
UPDATE creature_template SET minlevel=80, maxlevel=80, faction_A=14, faction_H=14, unit_flags=33554432 WHERE entry=40100;
UPDATE creature_template SET minlevel=80, maxlevel=80, faction_A=14, faction_H=14, unit_flags=33554432 WHERE entry=40083;
UPDATE creature_template SET minlevel=80, maxlevel=80, faction_A=14, faction_H=14, unit_flags=33554688 WHERE entry=40091;
UPDATE gameobject_template SET faction=35 WHERE entry=202794;
UPDATE creature_template SET minlevel=80, maxlevel=80, faction_A=14, faction_H=14, unit_flags=33554432 WHERE entry=40029;
UPDATE creature_template SET minlevel=83, maxlevel=83, faction_A=14, faction_H=14, unit_flags=33554432 WHERE entry=40135;
UPDATE creature_template SET minlevel=80, maxlevel=80, faction_A=14, faction_H=14, unit_flags=33554432 WHERE entry IN (40041, 40042, 40043, 40044, 40055);