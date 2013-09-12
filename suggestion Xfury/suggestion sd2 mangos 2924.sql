-- Auriaya
DELETE FROM creature_linking_template WHERE entry IN (34014,34098,34035,34034);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(34014, 603, 33515, 519, 0),
(34098, 603, 33515, 4112, 0),
(34034, 603, 33515, 4112, 0),
(34035, 603, 33515, 4112, 0);
DELETE FROM spell_script_target WHERE entry IN (64397);
INSERT INTO spell_script_target VALUES
(64397, 1, 33515, 0);
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (10400,10184) AND type IN (11,18);
INSERT INTO achievement_criteria_requirement VALUES
(10400,18,0,0),
(10184,18,0,0);
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (10399,10243) AND type IN (11,18);
INSERT INTO achievement_criteria_requirement VALUES
(10399,18,0,0),
(10243,18,0,0);

-- Vezax
DELETE FROM creature_linking_template WHERE entry IN (33488,33524);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(33488, 603, 33271, 4112, 0),
(33524, 603, 33271, 4112, 0);
UPDATE creature_template SET minlevel=83, maxlevel=83, faction_A=16, faction_H=16, minhealth=1575785, maxhealth=1575785 WHERE entry=33524;