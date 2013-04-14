-- Fix Madrigosa (YTDB)
DELETE FROM creature_template_addon WHERE entry=24895;
UPDATE creature_template SET minhealth=424900, maxhealth=424900, armor=7857, AIName='' WHERE entry=24895;
DELETE FROM spell_script_target WHERE entry IN (44844,44884);
INSERT INTO spell_script_target VALUES
(44844, 1, 24895, 0),
(44884, 1, 24895, 0);
-- doors
DELETE FROM spell_script_target WHERE entry IN (46609,46610,46637,46650,46652);
INSERT INTO spell_script_target VALUES
(46609, 0, 188119, 0),
(46610, 0, 188119, 0),
(46637, 0, 188119, 0),
(46650, 0, 188075, 0),
(46652, 0, 188075, 0);
DELETE FROM dbscripts_on_spell WHERE id IN (46609,46650);
INSERT INTO dbscripts_on_spell (id,command,datalong,data_flags,comments) VALUES
(46609,15,46610,8,'Cast Freeze on Ice Barrier'),
(46650,15,46652,8,'Cast Open Brutallus Back Door on Fire Barrier');