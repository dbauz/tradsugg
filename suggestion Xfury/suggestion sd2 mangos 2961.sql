-- Hodir
-- Chests are spawned
UPDATE gameobject SET spawntimesecs=604800 WHERE id IN (194307,194308);
DELETE FROM creature WHERE id IN (32938,32885,32908,32941,32950,32946,32948);
-- script targets
DELETE FROM spell_script_target WHERE entry IN (64543,62809);
INSERT INTO spell_script_target VALUES
(64543, 1, 32938, 0),
(64543, 1, 32926, 0),
(62809, 1, 32950, 0),
(62809, 1, 32948, 0),
(62809, 1, 32946, 0),
(62809, 1, 32941, 0),
(62809, 1, 33333, 0),
(62809, 1, 33332, 0),
(62809, 1, 33331, 0),
(62809, 1, 33330, 0),
(62809, 1, 32901, 0),
(62809, 1, 33325, 0),
(62809, 1, 32900, 0),
(62809, 1, 33328, 0),
(62809, 1, 32893, 0),
(62809, 1, 33327, 0),
(62809, 1, 32897, 0),
(62809, 1, 33326, 0);
UPDATE gameobject_template SET faction=16 WHERE entry=194173;
-- shatter chest visual
DELETE FROM spell_target_position WHERE id=62501;
INSERT INTO spell_target_position VALUES
(62501, 603, 2036.17, -201.843, 432.687, 3.14159);
-- flash freeze visual
DELETE FROM dbscripts_on_event WHERE id=20896;
INSERT INTO dbscripts_on_event (id, command, datalong, buddy_entry, search_radius, data_flags, comments) VALUES
(20896, 15, 62148, 30298, 45, 4, 'Invisible Stalker - Cast Flash Freeze visual');
-- achievs
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (10452,10458,10258,10260,10259,10261) AND type IN (12,18);
INSERT INTO achievement_criteria_requirement VALUES
(10452,18,0,0),
(10458,18,0,0),
(10452,12,0,0),
(10458,12,1,0),
(10258,18,0,0),
(10260,18,0,0),
(10258,12,0,0),
(10260,12,1,0),
(10259,18,0,0),
(10261,18,0,0),
(10259,12,0,0),
(10261,12,1,0);
-- missing accessories
DELETE FROM vehicle_accessory WHERE vehicle_entry IN (34146,34150,34151);
INSERT INTO vehicle_accessory VALUES
(34146, 0, 34137, 'Winter Jormungar'),
(34146, 1, 34137, 'Winter Jormungar'),
(34146, 2, 34137, 'Winter Jormungar'),
(34146, 3, 34137, 'Winter Jormungar'),
(34150, 0, 34137, 'Winter Jormungar'),
(34150, 1, 34137, 'Winter Jormungar'),
(34150, 2, 34137, 'Winter Jormungar'),
(34150, 3, 34137, 'Winter Jormungar'),
(34150, 4, 34137, 'Winter Jormungar'),
(34150, 5, 34137, 'Winter Jormungar'),
(34151, 0, 34137, 'Winter Jormungar'),
(34151, 1, 34137, 'Winter Jormungar'),
(34151, 2, 34137, 'Winter Jormungar'),
(34151, 3, 34137, 'Winter Jormungar'),
(34151, 4, 34137, 'Winter Jormungar'),
(34151, 5, 34137, 'Winter Jormungar'),
(34151, 6, 34137, 'Winter Jormungar'),
(34151, 7, 34137, 'Winter Jormungar');
-- Note: maybe the spawned Winter Jormungars should be deleted ?!?


-- Thorim
DELETE FROM creature_linking_template WHERE entry IN (32886,32885,32883,32872,32873,32882,33196,32874,33110,32875,33125,32957,32876,32877,32878,32904);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(32885, 603, 32908, 3, 0),
(32883, 603, 32907, 3, 0),
(32886, 603, 32865, 4, 0),
(32882, 603, 32865, 4, 0),
(32872, 603, 32865, 4, 0),
(32873, 603, 32865, 4, 0),
(32874, 603, 32865, 4, 0),
(33110, 603, 32865, 4, 0),
(32875, 603, 32865, 4, 0),
(32876, 603, 32865, 4096, 0),
(32877, 603, 32865, 4096, 0),
(32878, 603, 32865, 4096, 0),
(32904, 603, 32865, 4096, 0),
(33125, 603, 32865, 4096, 0),
(32957, 603, 32865, 4096, 0),
(33196, 603, 32865, 4096, 0);
DELETE FROM spell_script_target WHERE entry IN (64098,62278,62976,62565,64767,63238,62016,62577,62603,62466,62560,62942,61934);
INSERT INTO spell_script_target VALUES
(64098, 1, 32865, 0),
(62278, 1, 32865, 0),
(62976, 1, 33378, 0),
(62565, 1, 32865, 0),
(64767, 1, 33196, 0),
(63238, 1, 33378, 0),
(62016, 1, 33378, 0),
(62577, 1, 32892, 0),
-- (62466, 1, 32780, 0), -- keep for reference for the moment when Cone targets will support script target
(62603, 1, 32892, 0),
(62560, 1, 32872, 0),
(62560, 1, 32873, 0),
(62560, 1, 32874, 0),
(62560, 1, 33110, 0),
(62560, 1, 32875, 0),
(62560, 1, 32876, 0),
(62560, 1, 32877, 0),
(62560, 1, 32878, 0),
(62560, 1, 32904, 0),
(62560, 1, 32886, 0),
(62560, 1, 33125, 0),
(62560, 1, 32957, 0),
(62942, 1, 32875, 0),
(62942, 1, 33110, 0),
(62942, 1, 33125, 0),
(62942, 1, 32957, 0),
(61934, 1, 32892, 0);
UPDATE creature SET MovementType=0 WHERE id=32865;
-- scripts
DELETE FROM dbscripts_on_go_template_use WHERE id in (194264);
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, buddy_entry, search_radius, data_flags, comments) VALUES
(194264,0,13,0,194560,10,1,'use Dark Iron Portcullis'),
(194264,6,27,4,0,0,2,'set GO flag no Interact');
-- lightning orb movement (guesswork)
UPDATE creature_template SET MovementType=2 WHERE entry IN (33138);
DELETE FROM creature_movement_template WHERE entry IN (33138);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z) VALUES
(33138,1, 2134.899, -405.802, 438.247),
(33138,2, 2134.570, -440.317, 438.330),
(33138,3, 2166.783, -440.383, 438.247),
(33138,4, 2199.481, -435.117, 419.934),
(33138,5, 2212.861, -434.079, 412.968),
(33138,6, 2227.433, -433.584, 412.177),
(33138,7, 2227.929, -263.069, 412.177),
(33138,8, 2201.686, -262.987, 412.247),
(33138,9, 2183.241, -262.801, 414.736);
-- fix npcs falling through map
UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry IN (34055,33378,32892,32879);
-- missing spawns
DELETE FROM creature WHERE guid IN (151040);
INSERT INTO creature VALUES
(151040, 34055, 603, 3, 1, 0, 0, 2134.883, -263.6244, 442.0274, 0, 7200, 0, 0, 17010, 0, 0, 0);
-- fix jormungar position
UPDATE creature SET position_x=2133.427, position_y=-261.149, position_z=419.8447, orientation=2.980945 WHERE id=32882;
-- movement for stairs npcs
UPDATE creature_template SET MovementType=2 WHERE entry IN (33125,32957);
DELETE FROM creature_movement_template WHERE entry IN (33125,32957);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id) VALUES
(33125,1, 2101.2, -434.135, 438.331, 1000, 3312501),
(33125,2, 2147.16, -434.02, 438.247, 0, 0),
(33125,3, 2167.08, -440.17, 438.247, 0, 0),
(33125,4, 2197.73, -433.98, 420.710, 0, 0),
(33125,5, 2214.28, -433.53, 412.177, 0, 0),
(33125,6, 2226.28, -433.16, 412.177, 1000, 3312506),
(32957,1, 2100.41, -446.712, 438.331, 1000, 3312501),
(32957,2, 2147.88, -449.53, 438.247, 0, 0),
(32957,3, 2167.08, -440.17, 438.247, 0, 0),
(32957,4, 2197.73, -433.98, 420.710, 0, 0),
(32957,5, 2214.28, -433.53, 412.177, 0, 0),
(32957,6, 2226.28, -433.16, 412.177, 1000, 3312506);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3312501,3312506);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES
(3312501, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Set run on'),
(3312506, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pause movement');
-- achievs
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (10305,10309,10440,10457) AND type IN (12,18);
INSERT INTO achievement_criteria_requirement VALUES
(10305,18,0,0),
(10309,18,0,0),
(10305,12,0,0),
(10309,12,1,0),
(10440,18,0,0),
(10457,18,0,0),
(10440,12,0,0),
(10457,12,1,0);