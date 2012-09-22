UPDATE creature_template SET unit_flags=unit_flags|33554432 WHERE entry=21913;
DELETE FROM creature_linking_template WHERE entry IN (21913, 21920);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(21913, 548, 21213, 4112, 0),
(21920, 548, 21213, 4112, 0);