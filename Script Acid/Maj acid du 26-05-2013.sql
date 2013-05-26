DELETE FROM `creature_ai_scripts` WHERE(`creature_id`=25267);
DELETE FROM `creature_ai_scripts` WHERE(`creature_id`=25268);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Demonic Vapor (Trail)
('2526701','25267','1','0','100','2','10000','10000','0','0','11','45400','0','0','0','0','0','0','0','0','0','0','Demonic Vapor (Trail) - Cast Summon Blazing Dead on OOC Timer'),
-- Unyielding Dead
('2526801','25268','11','0','100','2','0','0','0','0','38','0','0','0','11','45415','0','0','0','0','0','0','Unyielding Dead - Set in Combat with Zone and Cast Blazing Dead Passive on Spawned');
UPDATE creature_template SET AIName='EventAI' WHERE entry IN (25267,25268);