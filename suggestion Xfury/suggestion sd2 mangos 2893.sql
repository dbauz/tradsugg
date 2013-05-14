-- quests 12213, 12220
DELETE FROM dbscripts_on_spell WHERE id=48218;
INSERT INTO dbscripts_on_spell (id, command, comments) VALUES
(48218, 8, 'create from quest_template');
-- quests 10990, 10991, 10992
DELETE FROM dbscripts_on_go_template_use WHERE id in (185547,185553,185551);
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, data_flags, comments) VALUES
('185551', '1', '10', '22992', '60000', '8', 'summon Guardian of the Hawk'),
('185553', '1', '10', '22993', '60000', '8', 'summon Guardian of the Eagle'),
('185547', '1', '10', '22994', '60000', '8', 'summon Guardian of the Falcon');