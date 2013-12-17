DELETE FROM spell_script_target WHERE entry IN (45630,45651,45735);
INSERT INTO spell_script_target VALUES
(45651,1,25474,0),
(45630,1,25474,0),
(45735,1,25474,0);
-- cast at quest completion - maybe there are some missing cinematics here.
DELETE FROM dbscripts_on_spell WHERE id IN (45651);
INSERT INTO dbscripts_on_spell (id, command, datalong, data_flags, comments) VALUES
(45651, 18, 0, 0, 'despawn captured beryl sorcerer');