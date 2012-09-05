-- spell script targets:
-- Mark of the Fallen Champion triggered heal
DELETE FROM spell_script_target WHERE entry IN (72260, 72202, 72278,72279,72280);
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(72260, 1, 37813),
(72278, 1, 37813),
(72279, 1, 37813),
(72280, 1, 37813),
(72202, 1, 37813);
-- Scent of Blood
DELETE FROM spell_script_target WHERE entry = 72771;
INSERT INTO spell_script_target VALUES (72771, 1, 38508);
-- link to the blood beasts
delete from creature_linking_template where entry in (38508);
insert into creature_linking_template values
(38508,631,37813,4112,0);

-- Creature id: 38508
UPDATE creature_template SET AIName='EventAI' WHERE entry=38508;
DELETE FROM creature_ai_scripts WHERE creature_id=38508;
INSERT INTO creature_ai_scripts VALUES
('3850801','38508','11','0','100','30','0','0','0','0','21','0','0','0','20','0','0','0','0','0','0','0','Blood Beast - Set Combat movement and auto attack false on Spawn'),
('3850802','38508','0','0','100','30','3000','3000','0','0','20','1','0','0','21','1','0','0','38','0','0','0','Blood Beast - Set Combat movement and auto attack true and set in combat with zone');