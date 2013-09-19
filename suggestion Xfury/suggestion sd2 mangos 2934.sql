-- leviathan creature link: despawn reinforcements on evade
DELETE FROM creature_linking_template WHERE entry IN (33060,33062,33109,33626,33627,33189);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(33060, 603, 33113, 4096, 500),
(33062, 603, 33113, 4096, 500),
(33109, 603, 33113, 4096, 500),
(33626, 603, 33113, 4096, 500),
(33627, 603, 33113, 4096, 500),
(33189, 603, 33113, 4096, 500);