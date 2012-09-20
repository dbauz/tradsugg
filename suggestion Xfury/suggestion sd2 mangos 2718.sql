UPDATE creature_template SET unit_flags=unit_flags|32832, InhabitType=InhabitType|1 WHERE entry=21217;
DELETE FROM creature_linking_template WHERE entry IN (21865, 21873);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(21865, 548, 21217, 4096, 0),
(21873, 548, 21217, 4096, 0);