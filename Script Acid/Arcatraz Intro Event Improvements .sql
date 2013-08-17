DELETE FROM creature_ai_scripts WHERE creature_id IN (20857,20859,21186);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Arcatraz Defender
('2085701','20857','11','0','100','6','0','0','0','0','11','38805','0','1','0','0','0','0','0','0','0','0','Arcatraz Defender  - Cast Immolate on Spawn'),
('2085702','20857','9','0','100','7','0','5','2000','3000','11','38804','1','0','0','0','0','0','0','0','0','0','Arcatraz Defender  - Cast Flaming Weapon'),
('2085703','20857','0','0','100','7','2000','3000','1000','1000','11','40449','1','1','0','0','0','0','0','0','0','0','Arcatraz Defender  - Cast Protean Subdual'),
-- Arcatraz Warder   
('2085901','20859','11','0','100','6','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Arcatraz Warder - Prevent Combat Movement Spawn'), 
('2085902','20859','1','0','100','7','1000','3000','4000','5000','11','36327','0','0','40','2','0','0','0','0','0','0','Arcatraz Warder - Cast Shoot Arcane Explosion Arrow and Set Ranged Weapon Model OOC'),
('2085903','20859','9','0','100','6','0','5','0','0','21','1','0','0','40','1','0','0','20','1','0','0','Arcatraz Warder - Start Combat Movement and Set Melee Weapon Model and Start Melee Below 5 Yards (Phase 1)'),    
('2085904','20859','21','0','100','6','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Arcatraz Warder - Prevent Combat Movement on Reaching Home after Evade'), 
-- Arcane Warder Target
('2118601','21186','11','0','100','6','0','0','0','0','42','1','0','0','21','0','0','0','0','0','0','0','Arcane Warder Target - Set Invincible and Prevent Combat Movement on Spawn');
UPDATE creature_template SET AIName='EventAI' WHERE entry=21186;