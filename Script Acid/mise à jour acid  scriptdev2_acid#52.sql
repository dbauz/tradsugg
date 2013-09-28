-- Algalon Stalker Asteroid Target 02
DELETE FROM creature_ai_scripts WHERE creature_id=33105;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('3310501','33105','1','0','100','2','5000','5000','0','0','11','62304','0','0','0','0','0','0','0','0','0','0','Algalon Stalker Asteroid Target 02 (Normal) - Cast Cosmic Smash'),
('3310502','33105','1','0','100','4','5000','5000','0','0','11','64597','0','0','0','0','0','0','0','0','0','0','Algalon Stalker Asteroid Target 02 (Heroic) - Cast Cosmic Smash');
UPDATE creature_template SET AIName='EventAI' WHERE entry=33105;
DELETE FROM creature_ai_scripts WHERE creature_id=33715;
UPDATE creature_template SET AIName='' WHERE entry=33715;
