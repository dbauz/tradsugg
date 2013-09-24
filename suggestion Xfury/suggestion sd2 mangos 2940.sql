-- Kologarn
-- fix Kolo bridge (handled by SD2)
UPDATE gameobject SET state=0 WHERE id=194232;
-- arms are summoned by script
delete from vehicle_accessory where vehicle_entry=32930;
delete from creature where id in (32933,32934);
-- arms should aggro on aggro
DELETE FROM creature_linking_template WHERE entry IN (32933,32934,33768);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(32933, 603, 32930, 3, 0),
(32934, 603, 32930, 3, 0),
(33768, 603, 32930, 4096, 0);
UPDATE creature_template SET unit_flags=unit_flags&~33554432 WHERE entry=32930;
-- script targets
DELETE FROM spell_script_target WHERE entry IN (63628,63629,63979);
INSERT INTO spell_script_target VALUES
(63628, 1, 32933, 0),
(63628, 1, 32934, 0),
(63629, 1, 32930, 0),
(63979, 1, 32930, 0);