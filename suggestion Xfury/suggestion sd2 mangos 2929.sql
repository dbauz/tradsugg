DELETE FROM spell_script_target WHERE entry IN (62646,62669,63658,63657,63659,63524,62505,65143);
INSERT INTO spell_script_target VALUES
(62646, 1, 33186, 0),
(62669, 1, 33282, 0),
(63658, 1, 33233, 0),
(63657, 1, 33233, 0),
(63659, 1, 33233, 0),
(63524, 1, 33233, 0),
(62505, 1, 33186, 0);
UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry=33186;
UPDATE creature SET MovementType=0 WHERE id=33186;
-- missing Razorscale controllers for harpoons
DELETE FROM creature WHERE guid IN (151036,151037,151038,151039);
INSERT INTO creature VALUES
(151036, 33233, 603, 3, 1, 0, 0, 572.4106, -138.6564, 393.9044, 4.764749, 7200, 0, 0, 12600, 0, 0, 0),
(151037, 33233, 603, 3, 1, 0, 0, 589.7287, -137.1148, 393.9011, 4.485496, 7200, 0, 0, 12600, 0, 0, 0),
(151038, 33233, 603, 2, 1, 0, 0, 558.646, -140.129, 391.517, 4.7328, 7200, 0, 0, 12600, 0, 0, 0),
(151039, 33233, 603, 2, 1, 0, 0, 606.747, -136.945, 391.353, 4.7328, 7200, 0, 0, 12600, 0, 0, 0);
-- missing Harpoon guns spawns. ToDo: fix orientation and rotations
DELETE FROM gameobject WHERE guid IN (200003,200004,200005,200006);
INSERT INTO gameobject VALUES
(200003, 194542, 603, 3, 1, 571.9012, -136.5541, 391.5171, -1.361356, 0, 0, 1, 0, -180, 255, 1),
(200004, 194541, 603, 3, 1, 589.4504, -134.8878, 391.5171, -1.466076, 0, 0, 1, 0, -180, 255, 1),
(200005, 194543, 603, 2, 1, 559.4506, -140.129, 391.517, -1.221729, 0, 0, 1, 0, -180, 255, 1),
(200006, 194519, 603, 2, 1, 606.747, -136.945, 391.353, -1.745327, 0, 0, 1, 0, -180, 255, 1);
-- movement for defenders
DELETE FROM creature_movement WHERE id IN (137593,137594,137595,137596,137597,137598);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(137593,1,560.773, -194.443, 391.517, 1000, 1435401, 4.77),
(137594,1,606.451, -185.194, 391.517, 1000, 1435401, 4.77),
(137595,1,548.469, -194.069, 391.517, 1000, 1435401, 4.77),
(137596,1,623.340, -189.485, 391.490, 1000, 1435401, 4.77),
(137597,1,577.101, -206.426, 391.517, 1000, 1435401, 4.77),
(137598,1,637.168, -175.515, 391.180, 1000, 1435401, 4.77);
-- achievs
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (10062,10063) AND type IN (11,18);
INSERT INTO achievement_criteria_requirement VALUES
(10062,18,0,0),
(10063,18,0,0);
-- despawn dwarfes
DELETE FROM creature_linking_template WHERE entry IN (33453,33388,33846);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(33453, 603, 33186, 4096, 0),
(33388, 603, 33186, 4096, 0),
(33846, 603, 33186, 4096, 0);