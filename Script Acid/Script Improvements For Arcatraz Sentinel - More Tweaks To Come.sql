DELETE FROM creature_ai_scripts WHERE creature_id=20869;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Arcatraz Sentinel (Need To Confirm That Behavior is Identical to Official Now)
('2086901','20869','11','0','100','2','0','0','0','0','11','36716','0','0','0','0','0','0','0','0','0','0','Arcatraz Sentinel (Normal) - Cast Energy Discharge on Spawn'),
('2086902','20869','11','0','100','4','0','0','0','0','11','38828','0','0','0','0','0','0','0','0','0','0','Arcatraz Sentinel (Heroic) - Cast Energy Discharge on Spawn'),
('2086903','20869','1','0','100','6','1000','1000','0','0','11','31261','0','0','0','0','0','0','0','0','0','0','Arcatraz Sentinel - Cast Permanent Feign Death (Root) on Spawn'),
('2086904','20869','10','0','100','2','0','5','0','0','28','0','31261','0','28','0','36716','0','0','0','0','0','Arcatraz Sentinel (Normal) - Remove Permanent Feign Death (Root) and Energy Discharge on Hostile LOS at 5 Yards'),
('2086905','20869','10','0','100','4','0','5','0','0','28','0','31261','0','28','0','38828','0','0','0','0','0','Arcatraz Sentinel (Heroic) - Remove Permanent Feign Death (Root) and Energy Discharge on Hostile LOS at 5 Yards'),
('2086906','20869','2','0','100','2','8','0','0','0','11','36719','0','1','36','21761','0','0','0','0','0','0','Arcatraz Sentinel (Normal) - Cast Explode and Transform into Destroyed Sentinel at 8% HP'),
('2086907','20869','2','0','100','4','8','0','0','0','11','38830','0','1','36','21761','0','0','0','0','0','0','Arcatraz Sentinel (Heroic) - Cast Explode and Transform into Destroyed Sentinel at 8% HP');
