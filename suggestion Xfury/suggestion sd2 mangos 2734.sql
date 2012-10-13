-- #### Sunwell Plateau ####
UPDATE gameobject_template SET flags=flags|16 WHERE entry IN (187869,188114,188115,188116);
-- Note: positions are from YTDB. The order of the orbs is guesswork
-- Orb of the Blue Flight go spawns
DELETE FROM gameobject WHERE id IN (187869,188114,188115,188116);
INSERT INTO gameobject (id,map,spawnMask,phaseMask,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecs,animprogress,state) VALUES
(188116, 580, 1, 1, 1703.91, 581.981, 28.132, 1.761, 0, 0, 0.771057, 0.636766, 180, 0, 1),
(188115, 580, 1, 1, 1747.59, 621.556, 28.05, 3.111, 0, 0, 0.999883, 0.0152957, 180, 0, 1),
(188114, 580, 1, 1, 1694.32, 676.565, 28.05, 4.808, 0, 0, 0.672508, -0.74009, 180, 0, 1),
(187869, 580, 1, 1, 1651.39, 635.547, 28.142, 6.163, 0, 0, 0.0600564, -0.998195, 180, 0, 1);
-- Orb targets spawns
DELETE FROM creature WHERE id=25640;
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(25640, 580, 1, 1, 0, 0, 1703.91, 581.981, 28.132, 1.761, 300, 0, 0, 1, 0, 0, 0),
(25640, 580, 1, 1, 0, 0, 1747.59, 621.556, 28.05, 3.111, 300, 0, 0, 1, 0, 0, 0),
(25640, 580, 1, 1, 0, 0, 1694.32, 676.565, 28.05, 4.808, 300, 0, 0, 1, 0, 0, 0),
(25640, 580, 1, 1, 0, 0, 1651.39, 635.547, 28.142, 6.163, 300, 0, 0, 1, 0, 0, 0);
-- other
UPDATE creature_template SET unit_flags=unit_flags|33554432 WHERE entry=25640;
UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry IN (25319,26046,25502);
-- Linking
DELETE FROM creature_linking_template WHERE entry IN (26046, 25319, 25502, 25708,25588, 25735);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(26046, 580, 25315, 4, 0),
(25319, 580, 25315, 4096, 0),
(25502, 580, 25315, 4112, 0),
(25708, 580, 25315, 4112, 0),
(25735, 580, 25315, 4112, 0),
(25588, 580, 25588, 15, 0);
-- Anveena (ytdb) (not sure if this ir right or guesswork - needs to be confirmed)
DELETE FROM creature WHERE id=26046;
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(26046, 580, 1, 1, 0, 0, 1698.45, 628.03, 50.3889, 0.331613, 604800, 0, 0, 1000, 10000, 0, 0);
UPDATE creature_template SET minhealth=1000, maxhealth=1000, minmana=10000, maxmana=10000 WHERE entry=26046;
-- Shield Orbs stats (ytdb)
UPDATE creature_template SET minlevel=70, maxlevel=70, minhealth=13986, maxhealth=13986, armor=6740, faction_A=14, faction_H=14 WHERE `entry` = 25502;
-- Sinister reflections (clone effect)
-- Power of the blue flight spells (ytdb)
UPDATE creature_template SET spell1=45862, spell2=45860, spell3=45856, spell4=45848 WHERE entry=25653;
-- Fil Kil'jaeden stats (ytdb)
UPDATE creature_template SET minhealth=9347800, maxhealth=9347800, minmana=1693500, maxmana=1693500 WHERE entry=25315;