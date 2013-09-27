-- Algalon
DELETE FROM spell_script_target WHERE entry IN (64996);
INSERT INTO spell_script_target VALUES
(64996, 1, 34246, 0);

-- Spawn Brann on GO use
DELETE FROM dbscripts_on_go_template_use WHERE id IN (194628,194752);
INSERT INTO dbscripts_on_go_template_use(id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, x, y, z, o, comments) VALUES
(194628, 0, 10, 34064, 0, 0, 0, 0, 1677.272, -162.437, 427.3326, 3.23, 'spawn Brann Bronzebeard at the celestial access'),
(194628, 1, 20, 2, 0, 34064, 60, 0, 0, 0, 0, 0, 'change Brann Bronzebeard movement to waypoint'),
(194628, 1, 13, 0, 0, 194767, 60, 1, 0, 0, 0, 0, 'use Celestial door 1'),
(194628, 1, 13, 0, 0, 194911, 60, 1, 0, 0, 0, 0, 'use Celestial door 2'),
(194752, 0, 10, 34064, 0, 0, 0, 0, 1677.272, -162.437, 427.3326, 3.23, 'spawn Brann Bronzebeard at the celestial access'),
(194752, 1, 20, 2, 0, 34064, 60, 0, 0, 0, 0, 0, 'change Brann Bronzebeard movement to waypoint'),
(194752, 1, 13, 0, 0, 194767, 60, 1, 0, 0, 0, 0, 'use Celestial door 1'),
(194752, 1, 13, 0, 0, 194911, 60, 1, 0, 0, 0, 0, 'use Celestial door 2');
-- Brann movement and intro to Algalon
DELETE FROM db_script_string WHERE entry IN (2000005578,2000005579);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000005578,'We did it, lads! We got here before Algalon\'s arrival. Maybe we can rig the systems to interfere with his analysis--',15824,1,0,0,'Brann algalon - say before Algalon'),
(2000005579,'I\'ll head back to the Archivum and see if I can jam his signal. I might be able to buy us some time while you take care of him.',15825,1,0,0,'Brann algalon - say after Algalon');
UPDATE `db_script_string` SET `content_loc2`='Nous l\'avons fait, les gars! Nous sommes arrivés ici avant l\'arrivée de Algalon. Peut-être que nous pouvons truquer les systèmes d\'interférer avec son analyse --' WHERE `entry`=2000005578;
UPDATE `db_script_string` SET `content_loc2`='Je repars à l\'Archivum et voir si je peux confiturer sese signaux. Je pourrais peut-être nous faire gagner du temps pendant que vous prenez soin de lui.' WHERE `entry`=2000005579;
-- movement for Algalon intro
DELETE FROM creature_movement_template WHERE entry IN (34064);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(34064,1, 1677.272, -162.437, 427.3326, 1000, 3406401, 3.23),
(34064,2, 1642.482, -164.0812, 427.2602, 0, 0, 0),
(34064,3, 1635.0, -169.5145, 427.2523, 1000, 3406403, 4.72),
(34064,4, 1632.814, -173.9334, 427.2621, 0, 0, 0),
(34064,5, 1632.539, -194.752, 426.0042, 0, 0, 0),
(34064,6, 1631.339, -226.7903, 418.3318, 0, 0, 0),
(34064,7, 1630.494, -267.2921, 417.3211, 1000, 3406407, 4.66),
(34064,8, 1630.958, -228.224, 418.112, 0, 0, 0),
(34064,9, 1632.085, -201.5839, 423.375, 0, 0, 0),
(34064,10,1630.66, -172.1115, 427.248, 10000, 0, 0);
-- handle movement and spawn Algalon
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3406401,3406403,3406407);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES
(3406401, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Set run on'),
(3406403, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Set run off'),
(3406407, 0, 0, 0, 0, 0, 0, 0, 2000005578, 0, 0, 0, 0, 'yell text'),
(3406407, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pause movement'),
(3406407, 8, 10, 32871, 0, 0, 0, 8, 0, 1632.528, -304.9462, 451.2764, 1.53, 'spawn Algalon'),
(3406407, 36, 0, 0, 0, 0, 0, 0, 2000005579, 0, 0, 0, 0, 'yell text'),
(3406407, 36, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Resume movement'),
(3406407, 36, 18, 35000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Despawn self');
-- fix creature stats
UPDATE creature_template SET minlevel=83, maxlevel=83, minhealth=13945, maxhealth=13945, faction_A=190, faction_H=190, unit_flags=unit_flags|33554432 WHERE entry=34246;
UPDATE creature_template SET faction_A=190, faction_H=190 WHERE entry=32871;
UPDATE creature_template SET minlevel=80, maxlevel=80, minhealth=75600, maxhealth=75600, unit_flags=unit_flags|33536 WHERE entry IN (33235,34064,33956,33957);