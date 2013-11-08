UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry=33134;
DELETE FROM spell_script_target WHERE entry IN (62714,65209,62978,63744);
INSERT INTO spell_script_target VALUES
(62714, 1, 33134, 0),
(65209, 1, 33134, 0),
(63744, 1, 33136, 0),
(62978, 1, 33292, 0);
UPDATE creature_template SET minlevel=80, maxlevel=80, minhealth=12600, maxhealth=12600, faction_A=14, faction_H=14, unit_flags=unit_flags|33554432 WHERE entry=33280;