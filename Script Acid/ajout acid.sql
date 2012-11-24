DELETE FROM creature_ai_texts where entry=-1310;
INSERT INTO `creature_ai_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`,`emote`) VALUES
('-1310','Ah, damn it all! Clever trap. Too bad you\'ll never live to tell the tale...','0','0','0','21409','0');
UPDATE `creature_ai_texts` SET `content_loc2` = 'Ah, damnation tout ça! Piège astucieux. Dommage que vous ne vivrez jamais assez pour raconter l\'histoire ...' WHERE `entry` =-1310 ;
INSERT INTO `creature_ai_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`,`emote`) VALUES
('-640','Ah, damn it all! Clever trap. Too bad you\'ll never live to tell the tale...','0','0','0','21409','0');
UPDATE `creature_ai_texts` SET `content_loc2` = 'Ah, damnation tout ça! Piège astucieux. Dommage que vous ne vivrez jamais assez pour raconter l\'histoire ...' WHERE `entry` =-640 ;
-- Please Re-Use -641 to -647

UPDATE creature_template SET AIName='EventAI' WHERE entry=21409;
DELETE FROM creature_ai_scripts WHERE creature_id=21409;
INSERT INTO creature_ai_scripts VALUES 
('2140901','21409','4','0','100','0','0','0','0','0','1','-1310','0','0','0','0','0','0','0','0','0','0','Envoy Icarius - Say on Aggro');
DELETE FROM creature_ai_scripts WHERE creature_id=29184;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('2918401','29184','11','0','100','6','0','0','0','0','20','0','0','0','21','0','0','0','0','0','0', '0','Anub\'arak Impale Target - Prevent Autoattack and Movement on Spawn'),
('2918402','29184','29','0','100','6','100','100','0','0','11','53455','0','7','0','0','0','0','0',' 0','0','0','Anub\'arak Impale Target - Cast Ground Erupt Animation'),
('2918403','29184','29','0','100','2','3000','3000','0','0','11','53454','0','7','0','0','0','0','28 ','0','53455','0','Anub\'arak Impale Target (Normal) - Cast Impale'),
('2918404','29184','29','0','100','4','3000','3000','0','0','11','59446','0','7','0','0','0','0','28 ','0','53455','0','Anub\'arak Impale Target (Heroic) - Cast Impale'),
('2918405','29184','29','0','100','6','4000','5000','0','0','41','0','0','0','0','0','0','0','0','0' ,'0','0','Anub\'arak Impale Target - Despawn');
DELETE FROM creature_ai_scripts WHERE creature_id=20243;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('2024301','20243','11','0','100','0','0','0','0','0','21','0','0','0','20','0','0','0','18','512','0','0','Scrapped Fel Reaver - Prevent Combat Movement and Prevent Auto Attack and Unit Flag Passive on Spawn'),
('2024302','20243','11','0','100','0','0','0','0','0','3','22509','0','0','0','0','0','0','0','0','0','0','Scrapped Fel Reaver - Transform on Spawn'),
('2024303','20243','8','0','100','0','35282','-1','0','0','19','512','0','0','0','0','0','0','0','0','0','0','Scrapped Fel Reaver - Remove Unit Flag Passive on Spell Fel Zapper Hit'),
('2024304','20243','0','0','100','33','15000','20000','15000','20000','32','20287','1','22','32','20287','1','23','32','20287','1','24','Scrapped Fel Reaver - Summon Zaxxis Ambusher'),
('2024305','20243','7','0','100','0','0','0','0','0','18','512','0','0','3','22509','0','0','0','0','0','0','Scrapped Fel Reaver - Set Unit Flag Passive and Transform on Evade');
UPDATE creature_template SET AIName = 'EventAI' WHERE entry = 27099;
DELETE FROM creature_ai_scripts WHERE creature_id = 27099;
insert into creature_ai_scripts values
('2709901','27099','11','0','100','6','0','0','0','0','20','0','0','0','21','0','0','0','0','0','0', '0','Crystal Spike - Prevent Autoattack and Movement on Spawn'),
('2709902','27099','29','0','100','6','100','100','0','0','11','50442','0','7','0','0','0','0','0',' 0','0','0','Crystal Spike - Crystal Spike Pre-visual'),
('2709903','27099','29','0','100','2','3000','3000','0','0','11','47944','0','7','0','0','0','0','0' ,'0','0','0','Crystal Spike (Normal) - Cast Crystal Spike'),
('2709904','27099','29','0','100','4','3000','3000','0','0','11','57067','0','7','0','0','0','0','0' ,'0','0','0','Crystal Spike (Heroic) - Cast Crystal Spike');
DELETE FROM creature_ai_scripts WHERE creature_id=22009;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('2200901','22009','11','0','100','2','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Tainted Elemental - Prevent Combat Movement on Spawn'),
('2200902','22009','0','0','100','3','2000','3000','2000','3000','11','38253','4','0','0','0','0','0','0','0','0','0','Tainted Elemental - Cast Poison Bolt'),
('2200903','22009','1','0','100','2','15000','15000','0','0','41','0','0','0','0','0','0','0','0','0','0','0','Tainted Elemental - Forced Despawn After 15 Seconds');
INSERT INTO `creature_ai_summons` (`id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`comment` ) VALUES
('22','2540.95','4032.21','136.18','4.44','60000','20287'),
('23','2507.12','4010.69','133.87','5.99','60000','20287'),
('24','2547.05','3980.34','131.04','2.29','60000','20287');
