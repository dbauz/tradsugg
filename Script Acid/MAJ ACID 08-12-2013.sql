Delete from `creature_ai_scripts` where `id`IN (1726401,1728101,1840501);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('1726401','17264','1','0','30','6','180000','240000','180000','240000','1','-673','0','0','0','0','0','0','0','0','0','0','Bonechewer Ravener - Random Say OOC'),
('1728101','17281','1','0','100','7','10000','30000','20000','40000','5','15','0','0','0','0','0','0','0','0','0','0','Bonechewer Ripper - Random Emote OOC'),
('1728102','17281','0','0','100','7','700','1000','12000','19000','11','18501','0','0','1','-46','0','0','0','0','0','0','Bonechewer Ripper - Cast Enrage'),
('1840501','18405','1','0','15','7','30000','120000','120000','240000','1','-143','-144','0','0','0','0','0','0','0','0','0','Tempest Forge Peacekeeper - Random Say OOC');
