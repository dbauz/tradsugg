DELETE FROM spell_script_target WHERE entry IN (64539,65101,64841,63274,63414);
INSERT INTO spell_script_target VALUES
(64539, 1, 34071, 0),
(65101, 1, 34071, 0),
(64841, 1, 33651, 0),
(63274, 1, 33576, 0),
(63414, 1, 33576, 2),
(63414, 1, 33432, 1);
-- flag handled by script
UPDATE gameobject_template SET flags=flags&~16 WHERE entry=194739;
-- hard mode scripts
DELETE FROM dbscripts_on_go_template_use WHERE id in (194739);
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, buddy_entry, search_radius, data_flags, comments) VALUES
(194739,15,15,64563,21252,50,11,'cast Summon Flames Initial'),
(194739,15,15,64563,21252,50,11,'cast Summon Flames Initial'),
(194739,15,15,64563,21252,50,11,'cast Summon Flames Initial');
DELETE FROM creature_linking_template WHERE entry IN (34363,34121,34050);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(34363, 603, 33432, 4112, 0),
(34121, 603, 33432, 4112, 0),
(34050, 603, 33651, 4112, 0);
UPDATE creature SET spawndist=0, MovementType=0 WHERE id=34143;
UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry=33670;
UPDATE creature_template SET RegenHealth=0 WHERE entry=33651;