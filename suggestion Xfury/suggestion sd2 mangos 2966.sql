-- Freya
DELETE FROM spell_script_target WHERE entry IN (63292,63295,63294,62485,62385,65587,65585,62484,62387,65588,65586,62483,62386,65589,65590,62584,64185,63059);
INSERT INTO spell_script_target VALUES
(63292, 1, 33575, 0),
(63295, 1, 33575, 0),
(63294, 1, 33575, 0),
(62485, 1, 32906, 0),
(62385, 1, 32906, 0),
(65587, 1, 32906, 0),
(65585, 1, 32906, 0),
(62484, 1, 32906, 0),
(62387, 1, 32906, 0),
(65588, 1, 32906, 0),
(65586, 1, 32906, 0),
(62483, 1, 32906, 0),
(62386, 1, 32906, 0),
(65589, 1, 32906, 0),
(65590, 1, 32906, 0),
(62584, 1, 32906, 0),
(64185, 1, 32906, 0),
(63059, 1, 33430, 0);
UPDATE creature SET MovementType=0, spawndist= 0 WHERE id=33575;
UPDATE creature SET position_x=2342.892, position_y=-46.95139, position_z=425.5204, orientation=3.298672, MovementType=2 WHERE id=32906;
DELETE FROM creature_movement_template WHERE entry IN (32906);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(32906,1, 2400.585, -41.88715, 421.6845, 0, 0, 0),
(32906,2, 2410.53, -77.68121, 420.6022, 0, 0, 0),
(32906,3, 2399.105, -98.47173, 424.2316, 10000, 3290603, 4.828),
(32906,4, 2405.682, -92.32346, 422.0239, 0, 0, 0),
(32906,5, 2398.668, -43.40278, 422.364, 0, 0, 0),
(32906,6, 2349.045, -40.70486, 425.7578, 0, 0, 0),
(32906,7, 2377.127, -33.0197, 423.5294, 0, 0, 0),
(32906,8, 2404.841, -26.67518, 419.3707, 0, 0, 0),
(32906,9, 2427.638, -13.23665, 418.6132, 0, 0, 0),
(32906,10, 2436.36, 12.81966, 422.3781, 0, 0, 0),
(32906,11, 2437.777, 19.35069, 426.0522, 10000, 3290611, 1.475),
(32906,12, 2430.471, 10.26877, 422.3386, 0, 0, 0),
(32906,13, 2398.712, -28.97917, 419.9115, 0, 0, 0),
(32906,14, 2349.045, -40.70486, 425.7578, 0, 0, 0),
(32906,15, 2341.608, -49.0382, 425.4912, 0, 0, 0),
(32906,16, 2331.326, -57.76036, 425.2937, 0, 0, 0),
(32906,17, 2321.944, -83.67773, 426.3419, 0, 0, 0),
(32906,18, 2301.615, -91.41477, 429.1122, 10000, 3290618, 3.607),
(32906,19, 2342.892, -46.95139, 425.5204, 0, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3290603,3290618,3290611);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES
(3290603, 3, 15, 63292, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Freya Dummy Yellow'),
(3290618, 3, 15, 63295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Freya Dummy Green'),
(3290611, 3, 15, 63294, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Freya Dummy Blue');
UPDATE creature_template SET minlevel=80, maxlevel=80, minhealth=12600, maxhealth=12600, faction_A=14, faction_H=14 WHERE entry=33168;
-- creature link
DELETE FROM creature_linking_template WHERE entry IN (34129,33228,33215,32918,33203,33202,32919,32916,32918,33168);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(34129, 603, 32906, 4112, 0),
(33228, 603, 32906, 4112, 0),
(33215, 603, 32906, 4112, 0),
(32918, 603, 32906, 4112, 0),
(33203, 603, 32906, 4112, 0),
(33202, 603, 32906, 4112, 0),
(32919, 603, 32906, 4112, 0),
(32916, 603, 32906, 4112, 0),
(33168, 603, 32906, 4112, 0),
(33088, 603, 32913, 4112, 0);
-- achievs
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (10445,10758,10447,10459,10448,10460,10449,10461) AND type IN (12,18);
INSERT INTO achievement_criteria_requirement VALUES
(10445,18,0,0),
(10758,18,0,0),
(10445,12,0,0),
(10758,12,1,0),
(10447,18,0,0),
(10459,18,0,0),
(10448,18,0,0),
(10447,12,0,0),
(10459,12,1,0),
(10448,12,0,0),
(10460,18,0,0),
(10449,18,0,0),
(10461,18,0,0),
(10460,12,1,0),
(10449,12,0,0),
(10461,12,1,0);