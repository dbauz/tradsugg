-- Flame Leviathan
-- vehicles spell clicks
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (33060,33062,33109,33067,33167);
INSERT INTO npc_spellclick_spells VALUES
(33060, 65031, 0, 0, 0, 1, 0),
(33062, 65030, 0, 0, 0, 1, 0),
(33109, 62309, 0, 0, 0, 1, 0),
(33067, 65031, 0, 0, 0, 1, 0),
(33167, 46598, 0, 0, 0, 1, 0);
-- vehicle spells
DELETE FROM creature_template_spells WHERE entry IN (33167,33109,33062,33060,33067);
INSERT INTO creature_template_spells VALUES
(33167, 62634, 64979, 62479, 62471, 0, 64414, 0, 0),
(33109, 62306, 62490, 62308, 0, 0, 62324, 0, 0),
(33062, 62974, 62286, 62299, 64660, 0, 0, 0, 0),
(33060, 62345, 62522, 62346, 0, 0, 0, 0, 0),
(33067, 62358, 62359, 64677, 0, 0, 0, 0, 0);
-- script targets
DELETE FROM spell_script_target WHERE entry IN (64414);
INSERT INTO spell_script_target VALUES
(64414, 1, 33109, 0);
-- delete summoned accessories
DELETE FROM creature WHERE id IN (33067,33167,33218);