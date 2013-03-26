DELETE FROM creature_linking_template WHERE entry = 36907;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(36907, 658, 36494, 1, 0);
DELETE FROM creature_template_addon WHERE entry=36494;
INSERT INTO creature_template_addon (entry, b2_0_sheath, auras) VALUES (36494, 1, 68792);