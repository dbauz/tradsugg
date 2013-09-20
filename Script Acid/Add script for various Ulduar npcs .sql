DELETE FROM `creature_ai_scripts` WHERE id IN (33090, 33264, 34161, 33214, 33189, 33387, 34275, 33139, 33364, 33365, 33571, 34159, 33067, 33167, 33062, 33109, 33060);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Salvaged Siege Engine
('3306001','33060','11','0','100','6','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Salvaged Siege Engine - Set Combat Movement false on Spawned'),
-- Salvaged Chopper
('3306201','33062','11','0','100','6','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Salvaged Chopper - Set Combat Movement false on Spawned'),
-- Salvaged Siege Turret
('3306701','33067','11','0','100','6','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Salvaged Siege Turret - Set Combat Movement false on Spawned'), 
-- Pool of Tar
('3309001','33090','11','0','100','6','0','0','0','0','11','62288','0','0','0','0','0','0','0','0','0','0','Pool of Tar - Cast Tar Passive on Spawned'),
('3309002','33090','8','0','100','6','0','4','0','0','11','62292','0','0','0','0','0','0','0','0','0','0','Pool of Tar - Cast Blaze on Fire spell hit'),
-- Salvaged Demolisher
('3310901','33109','11','0','100','6','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Salvaged Demolisher - Set Combat Movement false on Spawned'), 
-- Flame Leviathan Turret
('3313901','33139','11','0','100','6','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Flame Leviathan Turret - Set Combat Movement false on Spawned'),
('3313902','33139','0','0','100','7','5000','10000','5000','20000','11','62395','4','0','0','0','0','0','0','0','0','0','Flame Leviathan Turret - Cast Flame Cannon'), 
-- Salvaged Demolisher Mechanic Seat
('3316701','33167','11','0','100','6','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Salvaged Demolisher Mechanic Seat - Set Combat Movement false on Spawned'), 
-- Liquid Pyrite
('3318901','33189','11','0','100','6','0','0','0','0','11','62494','0','34','0','0','0','0','0','0','0','0','Liquid Pyrite - Cast Liquid Pyrite on Spawned'), 
-- Mechanolift 304-A
('3321401','33214','6','0','100','6','0','0','0','0','12','33189','0','30000','0','0','0','0','0','0','0','0','Mechanolift 304-A - Spawn Liquid Pyrite on Death'), 
-- Ironwork Cannon
('3326401','33264','11','0','100','6','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Ironwork Cannon - Set Combat Movement false on Spawned'),
('3326402','33264','0','0','100','7','5000','10000','20000','25000','11','62395','1','0','0','0','0','0','0','0','0','0','Ironwork Cannon - Cast Flame Cannon'), 
-- Thorim's Hammer Targetting Reticle
('3336401','33364','11','0','100','6','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Thorim\'s Hammer Targetting Reticle - Set Combat Movement false on Spawned'),
('3336402','33364','29','0','100','6','6000','6000','0','0','28','0','62897','0','0','0','0','0','0','0','0','0','Thorim\'s Hammer Targetting Reticle - Remove Lightning Skybeam on Timer'),
-- Thorim's Hammer
('3336501','33365','11','0','100','6','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Thorim\'s Hammer - Set Combat Movement false on Spawned'),
('3336502','33365','29','0','100','6','5000','5000','0','0','11','62911','0','0','0','0','0','0','0','0','0','0','Thorim\'s Hammer - Cast Thorim\'s Hammer on Timer'),
-- Writhing Lasher
('3338701','33387','0','0','100','7','1000','2000','3000','4000','11','65062','1','0','0','0','0','0','0','0','0','0','Writhing Lasher - Cast Lash'), 
-- Ulduar Gauntlet Generator
('3357101','33571','11','0','100','6','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Ulduar Gauntlet Generator - Set Combat Movement false on Spawned'),
('3357102','33571','0','0','100','7','2000','2000','2000','2000','12','33572','1','10000','0','0','0','0','0','0','0','0','Ulduar Gauntlet Generator - Summon Steelforged Defender'), 
-- Ulduar Gauntlet Generator (small radius)
('3415901','34159','11','0','100','6','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Ulduar Gauntlet Generator (small radius) - Set Combat Movement false on Spawned'),
('3415902','34159','0','0','100','7','2000','2000','2000','2000','12','33572','1','10000','0','0','0','0','0','0','0','0','Ulduar Gauntlet Generator (small radius) - Summon Steelforged Defender'),
-- Mechanostriker 54-A
('3416101','34161','0','0','100','7','3000','5000','25000','30000','11','64766','1','0','0','0','0','0','0','0','0','0','Mechanostriker 54-A - Cast Laser Barrage'),  
-- Ward of Life
('3427501','34275','0','0','100','7','1000','2000','3000','4000','11','65062','1','0','0','0','0','0','0','0','0','0','Ward of Life - Cast Lash'); 
UPDATE creature_template SET AIName='EventAI' WHERE entry IN (33090, 33264, 34161, 33214, 33189, 33387, 34275, 33139, 33364, 33365, 33571, 34159, 33067, 33167, 33062, 33109, 33060);

