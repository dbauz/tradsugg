DELETE FROM creature_template_addon WHERE entry=30169;
INSERT INTO creature_template_addon (entry, auras) VALUES (30169, 56118);
DELETE FROM spell_script_target WHERE entry=56099;
INSERT INTO spell_script_target VALUES
(56099,1,30169,0);