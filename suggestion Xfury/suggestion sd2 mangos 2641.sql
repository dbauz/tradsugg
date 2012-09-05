UPDATE `creature_template` SET InhabitType=InhabitType|4 WHERE entry in (30282,30084,32295,30592);
delete from spell_script_target where entry in (56140,56429);
insert into spell_script_target values
(56140,1,30118),
(56429,1,22517);
-- Movement from Trinity Core
UPDATE `creature` SET `MovementType` = 2 WHERE `id` = 28859;
delete from creature_movement_template where entry=28859;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z) values
(28859, 1, 812.7299, 1391.672, 283.2763),
(28859, 2, 848.2912, 1358.61, 283.2763),
(28859, 3, 853.9227, 1307.911, 283.2763),
(28859, 4, 847.1437, 1265.538, 283.2763),
(28859, 5, 839.9229, 1245.245, 283.2763),
(28859, 6, 827.3463, 1221.818, 283.2763),
(28859, 7, 803.2727, 1203.851, 283.2763),
(28859, 8, 772.9372, 1197.981, 283.2763),
(28859, 9, 732.1138, 1200.647, 283.2763),
(28859, 10, 693.8761, 1217.995, 283.2763),
(28859, 11, 664.5038, 1256.539, 283.2763),
(28859, 12, 650.1497, 1303.485, 283.2763),
(28859, 13, 662.9109, 1350.291, 283.2763),
(28859, 14, 677.6391, 1377.607, 283.2763),
(28859, 15, 704.8198, 1401.162, 283.2763),
(28859, 16, 755.2642, 1417.1, 283.2763);