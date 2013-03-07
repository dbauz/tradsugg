-- Varos
DELETE FROM creature WHERE id=28239;
DELETE FROM spell_script_target WHERE entry = 51022;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(51022, 1, 28236, 0);
DELETE FROM spell_script_target WHERE entry = 51024;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(51024, 1, 28239, 0);
DELETE FROM creature_linking_template WHERE entry IN (28236,28183);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(28236, 578, 27447, 4112, 0),
(28183, 578, 27447, 4, 0);
UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry IN (28236,27756,27692,27755);
-- Eregos
-- Planar anomaly - this is guesswork, but we are 99% sure that it's like this. Please confirm with sniff if available
UPDATE creature_template SET unit_flags=unit_flags|33554432 WHERE entry=30879;