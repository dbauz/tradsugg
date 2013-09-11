-- Ignis
DELETE FROM spell_script_target WHERE entry IN (62488,64503,62343,65109,62711,64475,62708,64474);
INSERT INTO spell_script_target VALUES
(62488, 1, 33121, 0),
(64503, 1, 33121, 0),
(62343, 1, 33121, 0),
(65109, 1, 33121, 0),
(62711, 1, 33118, 0),
(64475, 1, 33118, 0),
(64474, 1, 33118, 0),
(62708, 1, 33118, 0);
UPDATE creature_template SET unit_flags=unit_flags|33554688 WHERE entry=33121;
DELETE FROM creature_linking_template WHERE entry IN (33121,33221);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(33121, 603, 33118, 1028, 0),
(33221, 603, 33118, 4112, 0);
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (10068,10069) AND type IN (11,18);
INSERT INTO achievement_criteria_requirement VALUES
(10068,18,0,0),
(10069,18,0,0);
-- Add water auras for the 2 world triggers inside the pools
-- For other databases than UDB please check the guids manaully!!!
DELETE FROM creature_addon WHERE guid IN (137512,137514);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(137514, 0, 0, 1, 0, 0, 0, 64502),
(137512, 0, 0, 1, 0, 0, 0, 64502);