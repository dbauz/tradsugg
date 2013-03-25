DELETE FROM creature_template_spells WHERE entry=30161;
INSERT INTO creature_template_spells VALUES
(30161,56091,56092,57090,57143,57108,57092,0,0);
DELETE FROM spell_script_target WHERE entry=56505;
INSERT INTO spell_script_target VALUES
(56505, 1, 22517, 0);
UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry IN (30234,31748,30248,31749,30161,31752);
-- This shouldn't be not_attackable
UPDATE creature_template SET unit_flags=unit_flags&~2 WHERE entry=30282;