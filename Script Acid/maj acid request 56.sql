DELETE FROM creature_ai_scripts WHERE creature_id IN (32873, 33725, 33054, 33125, 34146, 34150, 34151,32922, 32923, 32924 , 32925);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('3287301','32873','4','0','100','6','0','0','0','0','11','62942','0','0','1','-212','0','0','0','0','0','0','Ancient Rune Giant - Cast Runic Fortification and Yell on Aggro'),
('3287302','32873','0','0','100','3','15000','20000','20000','25000','11','62411','0','0','0','0','0','0','0','0','0','0','Ancient Rune Giant (Normal) - Cast Stomp'),
('3287303','32873','0','0','100','5','15000','20000','20000','25000','11','62413','0','0','0','0','0','0','0','0','0','0','Ancient Rune Giant (Heroic) - Cast Stomp'),
('3287304','32873','0','0','100','7','7000','10000','15000','20000','11','62526','4','0','0','0','0','0','0','0','0','0','Ancient Rune Giant - Cast Rune Detonation'),
('3372501','33725','10','0','100','7','0','12','20000','20000','11','62241','0','0','0','0','0','0','0','0','0','0','Thorim Trap Bunny - Cast Paralytic Field'),
('3305401','33054','10','0','100','7','0','12','20000','20000','11','63540','0','0','0','0','0','0','0','0','0','0','Thorim Trap Bunny - Cast Paralytic Field'),
('3312501','33125','0','0','100','7','2000','4000','10000','15000','11','42724','1','0','0','0','0','0','0','0','0','0','Iron Honor Guard - Cleave'),
('3312502','33125','0','0','100','7','3000','5000','10000','18000','11','48639','1','0','0','0','0','0','0','0','0','0','Iron Honor Guard - Hamstring'),
('3312503','33125','0','0','100','3','4000','6000','12000','20000','11','62332','1','0','0','0','0','0','0','0','0','0','Iron Honor Guard (Normal) - Shield Smash'),
('3312504','33125','0','0','100','5','4000','6000','12000','20000','11','62420','1','0','0','0','0','0','0','0','0','0','Iron Honor Guard (Heroic) - Shield Smash'),
('3414601','34146','11','0','100','6','0','0','0','0','11','64615','0','0','0','0','0','0','0','0','0','0','Snow Mound (4) - Cast Snow Mound Particles on Spawned'),
('3414602','34146','10','0','100','6','0','15','0','0','28','0','46598','0','41','1000','0','0','0','0','0','0','Snow Mound (4) - Remove Ride Vehicle Hardcoded and Despawn on OOC Los'),
('3415001','34150','11','0','100','6','0','0','0','0','11','64615','0','0','0','0','0','0','0','0','0','0','Snow Mound (6) - Cast Snow Mound Particles on Spawned'),
('3415002','34150','10','0','100','6','0','15','0','0','28','0','46598','0','41','1000','0','0','0','0','0','0','Snow Mound (6) - Remove Ride Vehicle Hardcoded and Despawn on OOC Los'),
('3415101','34151','11','0','100','6','0','0','0','0','11','64615','0','0','0','0','0','0','0','0','0','0','Snow Mound (8) - Cast Snow Mound Particles on Spawned'),
('3415102','34151','10','0','100','6','0','15','0','0','28','0','46598','0','41','1000','0','0','0','0','0','0','Snow Mound (8) - Remove Ride Vehicle Hardcoded and Despawn on OOC Los'),
('3292201','32922','1','0','100','39','1000','2000','3000','3000','10','35','71','0','10','21','15','0','0','0','0','0','Dark Rune Champion - Random Emote on OOC Timer'),
('3292301','32923','1','0','100','39','1000','2000','3000','3000','10','35','71','0','10','21','15','0','0','0','0','0','Dark Rune Commoner - Random Emote on OOC Timer'),
('3292401','32924','1','0','100','39','1000','2000','3000','3000','10','35','71','0','10','21','15','0','0','0','0','0','Dark Rune Evoker - Random Emote on OOC Timer'),
('3292501','32925','1','0','100','39','1000','2000','3000','3000','10','35','71','0','10','21','15','0','0','0','0','0','Dark Rune Warbringer - Random Emote on OOC Timer');
UPDATE creature_template SET AIName='EventAI' WHERE entry IN (32873, 33725, 33054, 33125, 34146, 34150, 34151,32922, 32923, 32924 , 32925);
DELETE FROM `creature_ai_texts` WHERE `entry` = -212;
INSERT into `creature_ai_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`,`emote`) VALUES
('-212','%s fortifies nearby allies with runic might!','0','3','0','Ancient Rune Giant','0');
UPDATE `creature_ai_texts` SET `content_loc2`='%s fortifie alliés proches avec puissance runique!' WHERE (`entry`='-242');
Delete from `creature_ai_scripts` where `id`IN (3414602,3415002,3415102);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('3414602','34146','10','0','100','6','0','15','0','0','28','0','46598','0','41','1000','0','0','0','0','0','0','Snow Mound (4) - Remove Ride Vehicle Hardcoded and Despawn on OOC Los'),
('3415002','34150','10','0','100','6','0','15','0','0','28','0','46598','0','41','1000','0','0','0','0','0','0','Snow Mound (6) - Remove Ride Vehicle Hardcoded and Despawn on OOC Los'),
('3415102','34151','10','0','100','6','0','15','0','0','28','0','46598','0','41','1000','0','0','0','0','0','0','Snow Mound (8) - Remove Ride Vehicle Hardcoded and Despawn on OOC Los');
DELETE FROM creature_ai_scripts WHERE creature_id IN (32883,32885);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('3288301','32883','11','0','100','6','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Captured Mercenary Soldier - Prevent Combat Movement on Spawned'),
('3288302','32883','0','0','100','7','3000','5000','11000','15000','11','62318','1','0','0','0','0','0','0','0','0','0','Captured Mercenary Soldier - Cast Barbed Shot'),
('3288303','32883','0','0','100','7','6000','8000','10000','12000','11','40652','1','0','0','0','0','0','0','0','0','0','Captured Mercenary Soldier - Cast Wing Clip'),
('3288304','32883','0','0','100','7','1000','2000','2000','3000','11','16496','1','0','0','0','0','0','0','0','0','0','Captured Mercenary Soldier - Cast Shoot'),
('3288305','32883','9','0','100','7','0','15','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Captured Mercenary Soldier - Prevent Combat Movement on Range Check'),
('3288306','32883','9','0','100','7','20','35','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Captured Mercenary Soldier - Start Combat Movement on Range Check'),
('3288501','32885','11','0','100','6','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Captured Mercenary Soldier - Prevent Combat Movement on Spawned'),
('3288502','32885','0','0','100','7','3000','5000','11000','15000','11','62318','1','0','0','0','0','0','0','0','0','0','Captured Mercenary Soldier - Cast Barbed Shot'),
('3288503','32885','0','0','100','7','6000','8000','10000','12000','11','40652','1','0','0','0','0','0','0','0','0','0','Captured Mercenary Soldier - Cast Wing Clip'),
('3288504','32885','0','0','100','7','1000','2000','2000','3000','11','16496','1','0','0','0','0','0','0','0','0','0','Captured Mercenary Soldier - Cast Shoot'),
('3288505','32885','9','0','100','7','0','15','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Captured Mercenary Soldier - Prevent Combat Movement on Range Check'),
('3288506','32885','9','0','100','7','20','35','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Captured Mercenary Soldier - Start Combat Movement on Range Check');
UPDATE creature_template SET AIName='EventAI' WHERE entry IN (32883,32885);
Delete from `creature_ai_scripts` where `id`IN (3289301,3289701,3290001,3290101,3294101,3294601,3294801,3295001,3332501,3332601,3332701,3332801,3333001,3333101,3333201,3333301,2876806);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('3289301','32893','11','0','100','6','0','0','0','0','11','61989','0','0','21','0','0','0','0','0','0','0','Missy Flamecuffs - Cast Flash Freeze Summon and Prevent Combat Movement on Spawned'), 
('3289701','32897','11','0','100','6','0','0','0','0','11','61989','0','0','21','0','0','0','0','0','0','0','Field Medic Penny - Cast Flash Freeze Summon and Prevent Combat Movement on Spawned'),
('3290001','32900','11','0','100','6','0','0','0','0','11','61989','0','0','21','0','0','0','0','0','0','0','Elementalist Avuun - Flash Freeze Summon and Prevent Combat Movement on Spawned'),
('3290101','32901','11','0','100','6','0','0','0','0','11','61989','0','2','11','62795','0','2','21','0','0','0','Ellie Nightfeather - Cast Flash Freeze Summon, Moonkin Form (Shapeshift) and Prevent Combat Movement on Spawned'),
('3294101','32941','11','0','100','6','0','0','0','0','11','61989','0','2','11','62795','0','2','21','0','0','0','Tor Greycloud - Cast Flash Freeze Summon, Moonkin Form (Shapeshift) and Prevent Combat Movement on Spawned'),
('3294601','32946','11','0','100','6','0','0','0','0','11','61989','0','0','21','0','0','0','0','0','0','0','Veesha Blazeweaver - Cast Flash Freeze Summon and Prevent Combat Movement on Spawned'),
('3294801','32948','11','0','100','6','0','0','0','0','11','61989','0','0','21','0','0','0','0','0','0','0','Battle-Priest Eliza - Cast Flash Freeze Summon and Prevent Combat Movement on Spawned'),
('3295001','32950','11','0','100','6','0','0','0','0','11','61989','0','0','21','0','0','0','0','0','0','0','Spiritwalker Yona - Flash Freeze Summon and Prevent Combat Movement on Spawned'),
('3332501','33325','11','0','100','6','0','0','0','0','11','61989','0','2','11','62795','0','2','21','0','0','0','Eivi Nightfeather - Cast Flash Freeze Summon, Moonkin Form (Shapeshift) and Prevent Combat Movement on Spawned'),
('3332601','33326','11','0','100','6','0','0','0','0','11','61989','0','0','21','0','0','0','0','0','0','0','Field Medic Jessi - Cast Flash Freeze Summon and Prevent Combat Movement on Spawned'),
('3332701','33327','11','0','100','6','0','0','0','0','11','61989','0','0','21','0','0','0','0','0','0','0','Sissy Flamecuffs - Cast Flash Freeze Summon and Prevent Combat Movement on Spawned'),
('3332801','33328','11','0','100','6','0','0','0','0','11','61989','0','0','21','0','0','0','0','0','0','0','Elementalist Mahfuun - Flash Freeze Summon and Prevent Combat Movement on Spawned'),
('3333001','33330','11','0','100','6','0','0','0','0','11','61989','0','0','21','0','0','0','0','0','0','0','Battle-Priest Gina - Cast Flash Freeze Summon and Prevent Combat Movement on Spawned'),
('3333101','33331','11','0','100','6','0','0','0','0','11','61989','0','0','21','0','0','0','0','0','0','0','Amira Blazeweaver - Cast Flash Freeze Summon and Prevent Combat Movement on Spawned'),
('3333201','33332','11','0','100','6','0','0','0','0','11','61989','0','0','21','0','0','0','0','0','0','0','Spiritwalker Tara - Flash Freeze Summon and Prevent Combat Movement on Spawned'),
('3333301','33333','11','0','100','6','0','0','0','0','11','61989','0','2','11','62795','0','2','21','0','0','0','Kar Greycloud - Cast Flash Freeze Summon, Moonkin Form (Shapeshift) and Prevent Combat Movement on Spawned');

