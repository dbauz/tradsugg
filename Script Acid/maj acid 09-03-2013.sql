DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=27099);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Crystal Spike
('2709901','27099','11','0','100','2','0','0','0','0','11','47944','0','0','0','0','0','0','0','0','0','0','Crystal Spike (Normal) - Cast Crystal Spike on Spawn'),
('2709902','27099','11','0','100','4','0','0','0','0','11','57067','0','0','0','0','0','0','0','0','0','0','Crystal Spike (Heroic) - Cast Crystal Spike on Spawn'),
