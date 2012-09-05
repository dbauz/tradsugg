-- ### Old Hillsbrad ###
-- Unit flags
UPDATE creature_template SET unit_flags=unit_flags|33600 WHERE entry IN (17862,18096,23175,23177,23179,18092,18093,18094);
UPDATE creature_template SET unit_flags=unit_flags|33024 WHERE entry=18764;
UPDATE creature_template SET MovementType=0 WHERE entry IN (19438,17833,17860,17862,18096,18092,18093,18094);
UPDATE creature_template SET unit_flags=unit_flags|512 WHERE entry=17876;
UPDATE gameobject_template SET faction=1375, flags=flags|32 WHERE entry=184393;
UPDATE creature_template SET unit_flags=unit_flags|33554432 WHERE entry=18798;
UPDATE creature_template SET unit_flags=unit_flags|32832 WHERE entry in (18092,18093,18094);
Update gameobject set spawnmask=3 where map=560;
delete from creature where id IN (18646,18092,18093,18094);
-- creature_template_addon
DELETE FROM `creature_template_addon` WHERE (`entry`=17862);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES (17862, 8469, 0, 0, 0, 0, 0, '');
DELETE FROM `creature_template_addon` WHERE (`entry`=18887);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES (18887, 0, 0, 0, 0, 0, 0, 33071);
-- fix armorer and tabetha spawn
UPDATE `creature` SET `position_x` = 2185.32, `position_y` = 116.5932, `position_z` = 89.45483, `orientation` = 0.9812461 WHERE `guid` = 83939;
UPDATE `creature` SET `position_x` = 2664.657, `position_y` = 657.5964, `position_z` = 62.02129, `orientation` = 2.722714 WHERE `guid` = 84000;
-- leutenant drake waypoints (from SD2)
UPDATE creature_template SET MovementType=2 WHERE entry=17848;
delete from creature_movement_template where entry=17848;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z) values
(17848, 1, 2125.84, 87.2535, 54.8830),
(17848, 2, 2111.01, 93.8022, 52.6356),
(17848, 3, 2106.70, 114.753, 53.1965),
(17848, 4, 2107.76, 138.746, 52.5109),
(17848, 5, 2114.83, 160.142, 52.4738),
(17848, 6, 2125.24, 178.909, 52.7283),
(17848, 7, 2151.02, 208.901, 53.1551),
(17848, 8, 2177.00, 233.069, 52.4409),
(17848, 9, 2190.71, 227.831, 53.2742),
(17848, 10, 2178.14, 214.219, 53.0779),
(17848, 11, 2154.99, 202.795, 52.6446),
(17848, 12, 2132.00, 191.834, 52.5709),
(17848, 13, 2117.59, 166.708, 52.7686),
(17848, 14, 2093.61, 139.441, 52.7616),
(17848, 15, 2086.29, 104.950, 52.9246),
(17848, 16, 2094.23, 81.2788, 52.6946),
(17848, 17, 2108.70, 85.3075, 53.3294),
(17848, 18, 2125.50, 88.9481, 54.7953),
(17848, 19, 2128.20, 70.9763, 64.422);
-- Heroic entries
UPDATE creature_template SET unit_flags=unit_flags|33600 WHERE entry IN (20521,20531,23182,23184,23186,20545,20547,20546);
UPDATE creature_template SET unit_flags=unit_flags|33024 WHERE entry=20523;
UPDATE creature_template SET MovementType=0 WHERE entry IN (20530,20529,20521,20531,20545,20547,20546);
UPDATE creature_template SET unit_flags=unit_flags|512, minhealth=37956, maxhealth=37956 WHERE entry=20548;
UPDATE creature_template SET unit_flags=unit_flags|33554432 WHERE entry=20544;
UPDATE creature_template SET unit_flags=unit_flags|32832 WHERE entry in (20545,20547,20546);
DELETE FROM `creature_template_addon` WHERE (`entry`=20521);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_pvp_state`, `emote`, `moveflags`, `auras`) VALUES (20521, 8469, 0, 0, 0, 0, 0, '');
-- leutenant drake waypoints (from SD2)
UPDATE creature_template SET MovementType=2 WHERE entry=20535;
delete from creature_movement_template where entry=20535;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z) values
(20535, 1, 2125.84, 87.2535, 54.8830),
(20535, 2, 2111.01, 93.8022, 52.6356),
(20535, 3, 2106.70, 114.753, 53.1965),
(20535, 4, 2107.76, 138.746, 52.5109),
(20535, 5, 2114.83, 160.142, 52.4738),
(20535, 6, 2125.24, 178.909, 52.7283),
(20535, 7, 2151.02, 208.901, 53.1551),
(20535, 8, 2177.00, 233.069, 52.4409),
(20535, 9, 2190.71, 227.831, 53.2742),
(20535, 10, 2178.14, 214.219, 53.0779),
(20535, 11, 2154.99, 202.795, 52.6446),
(20535, 12, 2132.00, 191.834, 52.5709),
(20535, 13, 2117.59, 166.708, 52.7686),
(20535, 14, 2093.61, 139.441, 52.7616),
(20535, 15, 2086.29, 104.950, 52.9246),
(20535, 16, 2094.23, 81.2788, 52.6946),
(20535, 17, 2108.70, 85.3075, 53.3294),
(20535, 18, 2125.50, 88.9481, 54.7953),
(20535, 19, 2128.20, 70.9763, 64.422);