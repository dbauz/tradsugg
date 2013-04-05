DELETE FROM creature_linking_template WHERE entry IN (7309,10120,7076,7077);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(7309, 70, 2748, 20, 0),
(10120, 70, 2748, 20, 0),
(7076, 70, 2748, 20, 0),
(7077, 70, 2748, 20, 0);
DELETE FROM spell_script_target WHERE entry IN (10258,10252);
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(10258, 1, 10120),
(10252, 1, 7076);