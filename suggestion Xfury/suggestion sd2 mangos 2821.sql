UPDATE quest_template SET ReqSpellCast1=0 WHERE entry=6661;
DELETE FROM spell_script_target WHERE entry = 21052;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(21052, 1, 13017);
UPDATE quest_template SET CompleteScript=6661 WHERE entry=6661;
DELETE FROM dbscripts_on_quest_end WHERE id=6661;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, comments) VALUES 
(6661,1,15, 21052,'Cast Monty Bashes Rats (DND)');
DELETE FROM dbscripts_on_spell WHERE id=21052;
INSERT INTO dbscripts_on_spell (id, command, datalong, data_flags, comments) VALUES
(21052, 15, 8329, 6, 'Enthralled Deeprun Rat - Cast Suicide');