-- Archivum
-- gossips
UPDATE creature_template SET gossip_menu_id=10393 WHERE entry IN (33957,33956);
UPDATE creature_template SET gossip_menu_id=10387 WHERE entry=33235;
DELETE FROM gossip_menu WHERE entry IN (10368,10393,10387);
INSERT INTO gossip_menu VALUES
(10368, 14383, 0, 0),
(10393, 14428, 0, 0),
(10387, 14420, 0, 0);
-- door
UPDATE gameobject SET state=1 WHERE id=194556;
-- movement
UPDATE creature_template SET MovementType=2 WHERE entry IN (33957,33956,33235);
DELETE FROM creature_movement_template WHERE entry IN (33957,33956,33235);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- Brann
(33235,1, 1554.274, 142.1644, 427.273, 1000, 3323501, 3.61),
(33235,2, 1497.846, 119.2926, 427.3508, 5000, 3323502, 3.20),
(33235,3, 1491.790, 119.8236, 427.3559, 0, 0, 3.20),
(33235,4, 1481.897, 119.5791, 423.9673, 0, 0, 3.16),
(33235,5, 1439.046, 118.8712, 423.6409, 1000, 3323505, 3.12),
-- Doren
(33956,1, 1556.469, 143.5023, 427.2918, 1000, 3323501, 4.04),
(33956,2, 1507.894, 122.7615, 427.3373, 5000, 0, 3.20),
(33956,3, 1491.790, 119.8236, 427.3559, 0, 0, 3.20),
(33956,4, 1481.897, 119.5791, 423.9673, 0, 0, 3.16),
(33956,5, 1441.419, 121.1335, 423.6409, 1000, 3323505, 3.18),
-- Doren (h)
(33957,1, 1556.469, 143.5023, 427.2918, 1000, 3323501, 4.04),
(33957,2, 1507.894, 122.7615, 427.3373, 5000, 0, 3.20),
(33957,3, 1491.790, 119.8236, 427.3559, 0, 0, 3.20),
(33957,4, 1481.897, 119.5791, 423.9673, 0, 0, 3.16),
(33957,5, 1441.419, 121.1335, 423.6409, 1000, 3323505, 3.18);
DELETE FROM db_script_string WHERE entry IN (2000005577);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000005577,'You\'ve defeated the Iron Council and unlocked the Archivum! Well done, lads!',15827,1,0,0,'Brann archivum - say spawned');
UPDATE `db_script_string` SET `content_loc2`='Vous avez vaincu le Conseil de fer et déverrouillé l\'Archivum ! Bien joué, les gars !' WHERE `entry`= 2000005577;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3323505,3323501,3323502);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, comments) VALUES
(3323501, 0, 25, 1, 0, 0, 0, 0, 0, 'Set run on'),
(3323502, 0, 0, 0, 0, 0, 0, 0, 2000005577, 'yell text'),
(3323505, 0, 32, 1, 0, 0, 0, 0, 0, 'Pause movement'),
(3323505, 0, 29, 1, 1, 0, 0, 0, 0, 'Set gossip flag');
-- missing GO
DELETE FROM gameobject WHERE guid IN (200007,200008);
INSERT INTO gameobject VALUES
(200007, 194628, 603, 1, 1, 1646.182, -174.6881, 427.2536, 1.553341, 0, 0, 1, 0, 7200, 255, 1),
(200008, 194752, 603, 1, 1, 1646.182, -174.6881, 427.2536, 1.553341, 0, 0, 1, 0, 7200, 255, 1);
-- ToDo: add texts and script for archivum quests completion and other related events!