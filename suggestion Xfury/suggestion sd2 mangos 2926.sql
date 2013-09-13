-- XT002
DELETE FROM spell_script_target WHERE entry IN (64799,62826);
INSERT INTO spell_script_target VALUES
(64799, 1, 33293, 0),
(62826, 1, 33337, 0);
DELETE FROM creature_linking_template WHERE entry IN (33329,33343,33346,33344,34001,34004);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(33329, 603, 33293, 1044, 0),
(33343, 603, 33293, 4096, 0),
(33346, 603, 33293, 4096, 0),
(33344, 603, 33293, 4096, 0),
(34001, 603, 33293, 4112, 0),
(34004, 603, 33293, 4112, 0);
-- delete vehicle accesory and add manually
DELETE FROM creature WHERE id=33329;
INSERT INTO creature VALUES
(151035, 33329, 603, 3, 1, 0, 0, 886.275, -12.0545, 409.602, 3.12941, 604800, 5, 0, 1800021, 0, 0, 0);
DELETE FROM vehicle_accessory WHERE vehicle_entry=33293;
-- flag handled by vehicle seat
UPDATE creature_template SET unit_flags=unit_flags&~33554432 WHERE entry=33329;