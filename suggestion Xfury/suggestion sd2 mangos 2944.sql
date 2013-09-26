-- Misc trash
UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry=34203;
DELETE FROM spell_script_target WHERE entry IN (63528);
INSERT INTO spell_script_target VALUES
(63528, 1, 33699, 0),
(63528, 1, 33722, 0);
-- link keepers to their buddies
DELETE FROM creature_linking_template WHERE entry IN (33699);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(33699, 603, 33722, 15, 50);