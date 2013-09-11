DELETE FROM creature_ai_scripts WHERE creature_id IN (25855,25879,30890,31214);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Singularity
('2585501','25855','11','0','100','2','0','0','0','0','11','46242','0','0','0','0','0','0','0','0','0','0','Singularity - Cast Black Hole Summon Visual on Spawned'),
('2585502','25855','1','0','100','2','1000','1000','0','0','11','46247','0','0','0','0','0','0','0','0','0','0','Singularity - Cast Black Hole Summon Visual 2 on OOC Timer'),
('2585503','25855','1','0','100','2','4000','4000','0','0','11','46228','0','0','0','0','0','0','0','0','0','0','Singularity - Cast Black Hole Passive on OOC Timer'),
-- Darkness
('2587901','25879','11','0','100','2','0','0','0','0','11','46265','0','0','0','0','0','0','0','0','0','0','Darkness - Cast Void Zone Pre-effect Visual on Spawned'),
('2587902','25879','1','0','100','2','4000','4000','0','0','11','46262','0','0','0','0','0','0','0','0','0','0','Darkness - Cast Void Zone Periodic on OOC timer'),
('2587903','25879','1','0','100','2','6000','6000','0','0','11','46263','0','0','0','0','0','0','0','0','0','0','Darkness - Cast Summon Dark Fiend on OOC timer'),
-- Twilight Whelp
('3089001','30890','0','0','100','7','1000','1000','5000','10000','11','60708','1','0','0','0','0','0','0','0','0','0','Twilight Whelp - Cast Fade Armor'),
-- Sartharion Twilight Whelp
('3121401','31214','0','0','100','7','1000','1000','5000','10000','11','60708','1','0','0','0','0','0','0','0','0','0','Sartharion Twilight Whelp - Cast Fade Armor');
UPDATE creature_template SET AIName='EventAI' WHERE entry IN (25855,25879,30890,31214);
