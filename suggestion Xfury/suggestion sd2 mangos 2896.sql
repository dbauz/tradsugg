-- quest 11691
-- spell script targets
DELETE FROM spell_script_target WHERE entry=46603;
INSERT INTO spell_script_target VALUES
(46603, 1, 26121, 0);
DELETE FROM spell_script_target WHERE entry=46593;
INSERT INTO spell_script_target VALUES
(46593, 1, 26120, 0);
DELETE FROM spell_script_target WHERE entry=46809;
INSERT INTO spell_script_target VALUES
(46809, 1, 26239, 0);
DELETE FROM spell_script_target WHERE entry IN (45930,46398);
INSERT INTO spell_script_target VALUES
(45930, 1, 25971, 0),
(45930, 1, 25972, 0),
(45930, 1, 25973, 0),
(46398, 1, 25971, 0),
(46398, 1, 25972, 0),
(46398, 1, 25973, 0);
DELETE FROM spell_script_target WHERE entry IN (45941,46623);
INSERT INTO spell_script_target VALUES
(45941, 1, 25746, 0),
(46623, 1, 25746, 0);

-- event scripts
/*DELETE FROM db_script_string WHERE entry IN (2000005554,2000005555,2000005556);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comments) VALUES
(2000005554,'The Ice Stone has melted!',0,0,0,22,'say Ahune 1'),
(2000005555,'Ahune, your strength grows no more!',0,0,0,0,'say Ahune 2'),
(2000005556,'Your frozen reign will not come to pass!',0,0,0,0,'say Ahune 3');*/
DELETE FROM db_script_string WHERE entry IN (2000005554,2000005555,2000005556);
INSERT INTO `db_script_string` VALUES ('2000005554', 'The Ice Stone has melted!', null, null, null, null, null, null, null, null);
INSERT INTO `db_script_string` VALUES ('2000005555', 'Ahune, your strength grows no more!', null, null, null, null, null, null, null, null);
INSERT INTO `db_script_string` VALUES ('2000005556', 'Your frozen reign will not come to pass!', null, null, null, null, null, null, null, null);
UPDATE `db_script_string` SET `content_loc2`='La pierre de glace a fondu!' WHERE `entry`=2000005554;
UPDATE `db_script_string` SET `content_loc2`='Ahune, votre force ne pousse plus!' WHERE `entry`=2000005555;
UPDATE `db_script_string` SET `content_loc2`='Votre règne congelé ne viendra pas à passer!' WHERE `entry`=2000005556;

UPDATE creature_template_addon SET auras='' WHERE entry IN (25745,25971,25972,25973,25754);
UPDATE quest_template SET CompleteScript=11691 WHERE entry=11691;
DELETE FROM dbscripts_on_quest_end WHERE id=11691;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES
(11691, 0, 15, 45937, 25745, 100, 0, 0, 0, 0, 0, 0, '[PH] Ahune Summon Loc Bunny - Cast Ahune - Summoning Visual 1'),
(11691, 1, 15, 46603, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Force Wisp Flight Missile'),
(11691, 1, 0, 0, 0, 0, 0, 2000005554, 0, 0, 0, 0, 'say Ahune 1'),
(11691, 3, 15, 45930, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Ahune - Summoning Rhyme Spell, make bonfire'),
(11691, 3, 0, 0, 0, 0, 0, 2000005555, 0, 0, 0, 0, 'say Ahune 2'),
(11691, 5, 0, 0, 0, 0, 0, 2000005556, 0, 0, 0, 0, 'say Ahune 3'),
(11691, 10, 15, 46402, 25745, 100, 0, 0, 0, 0, 0, 0, '[PH] Ahune Summon Loc Bunny - Cast Ahune Resurfaces'),
(11691, 10, 10, 25740, 0, 0, 2, 0, -99.1021, -233.753, -1.222967, 1.5282, 'spawn Ahune'),
(11691, 12, 10, 25865, 25740, 100, 0, 0, -98.01508, -230.4555, -1.210892, 1.797689, 'spawn Frozen Core');

DELETE FROM dbscripts_on_spell WHERE id=45930;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, buddy_entry, search_radius, data_flags, comments) VALUES
(45930, 0, 15, 46339, 0, 0, 6, 'Cast Bonfire Disguise');
-- ToDo: these spells are a little more complicated. Keep here only for reference
-- (45930, 30, 15, 46341, 25754, 50, 0, 'Cast Find Opening Visual Trigger'),
-- (45930, 31, 15, 45964, 25740, 100, 2, 'Cast Find Opening Visual');
DELETE FROM dbscripts_on_spell WHERE id IN (45941, 46623);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, data_flags, comments) VALUES
(45941, 0, 15, 45939, 6, 'cast Summon Ahune\'s Loot'),
(46623, 0, 15, 46622, 6, 'cast Summon Ahune\'s Loot, Heroic');
-- creature link
DELETE FROM creature_linking_template WHERE entry IN (25865,25755,25756,25757);
INSERT INTO creature_linking_template VALUES
(25865, 547, 25740, 4112, 0),
(25755, 547, 25740, 4112, 0),
(25756, 547, 25740, 4112, 0),
(25757, 547, 25740, 4112, 0);