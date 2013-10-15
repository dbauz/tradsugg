DELETE FROM `creature_ai_scripts` WHERE creature_id IN (32915 ,33050,32913,32914,32918,33203,33431, 33772,33806,33170,23789);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('3291501','32915','4','0','100','6','0','0','0','0','1','-426','0','0','0','0','0','0','0','0','0','0','Elder Brightleaf - Yell on Aggro'),
('3291502','32915','5','0','100','7','0','0','0','0','1','-427','-428','0','0','0','0','0','0','0','0','0','Elder Brightleaf - Random Yell on Kill'),
('3291503','32915','0','0','100','3','7000','9000','12000','15000','11','62240','0','0','0','0','0','0','0','0','0','0','Elder Brightleaf (Normal) - Cast Solar Flare'),
('3291504','32915','0','0','100','5','7000','9000','12000','15000','11','62920','0','0','0','0','0','0','0','0','0','0','Elder Brightleaf (Heroic) - Cast Solar Flare'),
('3291505','32915','0','0','100','3','10000','15000','25000','30000','11','62921','0','0','0','0','0','0','0','0','0','0','Elder Brightleaf (Normal) - Cast Unstable Sun Beam'),
('3291506','32915','0','0','100','5','10000','15000','25000','30000','11','64088','0','0','0','0','0','0','0','0','0','0','Elder Brightleaf (Heroic) - Cast Unstable Sun Beam'),
('3291507','32915','0','0','100','7','5000','5000','5000','5000','11','62262','0','0','0','0','0','0','0','0','0','0','Elder Brightleaf - Cast Brightleaf Flux'),
('3291508','32915','6','0','100','6','0','0','0','0','1','-641','0','0','0','0','0','0','0','0','0','0','Elder Brightleaf - Yell on Death'), 
('3305001','33050','11','0','100','6','0','0','0','0','11','62211','0','0','11','62209','0','0','0','0','0','0','Unstable Sun Beam - Cast Unstable Sun Beam and Photosynthesis on Spawned'),
('3305002','33050','1','0','100','2','10000','10000','0','0','11','62217','0','0','41','2000','0','0','0','0','0','0','Unstable Sun Beam (Normal) - Cast Unstable Energy and Despawn'),
('3305003','33050','1','0','100','4','10000','10000','0','0','11','62922','0','0','41','2000','0','0','0','0','0','0','Unstable Sun Beam (Heroic) - Cast Unstable Energy and Despawn'),
('3291301','32913','4','0','100','6','0','0','0','0','1','-320','0','0','0','0','0','0','0','0','0','0','Elder Ironbranch - Yell on Aggro'),
('3291302','32913','5','0','100','7','0','0','0','0','1','-423','-424','0','0','0','0','0','0','0','0','0','Elder Ironbranch - Random Yell'),
('3291303','32913','0','0','100','3','7000','10000','12000','15000','11','62310','4','0','0','0','0','0','0','0','0','0','Elder Ironbranch (Normal) - Cast Impale'),
('3291304','32913','0','0','100','5','7000','10000','12000','15000','11','62928','4','0','0','0','0','0','0','0','0','0','Elder Ironbranch (Heroic) - Cast Impale'),
('3291305','32913','0','0','100','3','15000','20000','30000','30000','11','62285','0','0','0','0','0','0','0','0','0','0','Elder Ironbranch (Normal) - Cast Thorn Swarm'),
('3291306','32913','0','0','100','5','15000','20000','30000','30000','11','62931','0','0','0','0','0','0','0','0','0','0','Elder Ironbranch (Heroic) - Cast Thorn Swarm'),
('3291307','32913','0','0','100','3','10000','15000','20000','30000','11','62275','0','0','0','0','0','0','0','0','0','0','Elder Ironbranch (Normal) - Cast Iron Roots'),
('3291308','32913','0','0','100','5','10000','15000','20000','30000','11','62929','0','0','0','0','0','0','0','0','0','0','Elder Ironbranch (Heroic) - Cast Iron Roots'),
('3291309','32913','6','0','100','6','0','0','0','0','1','-425','0','0','0','0','0','0','0','0','0','0','Elder Ironbranch - Yell on Death'),
('3291401','32914','4','0','100','6','0','0','0','0','1','-25','0','0','0','0','0','0','0','0','0','0','Elder Stonebark - Yell on Aggro'),
('3291402','32914','5','0','100','7','0','0','0','0','1','-26','-27','0','0','0','0','0','0','0','0','0','Elder Stonebark - Random Yell on Kill'),
('3291403','32914','0','0','100','3','10000','15000','15000','20000','11','62325','0','0','0','0','0','0','0','0','0','0','Elder Stonebark (Normal) - Cast Ground Tremor'),
('3291404','32914','0','0','100','5','10000','15000','15000','20000','11','62932','0','0','0','0','0','0','0','0','0','0','Elder Stonebark (Heroic) - Cast Ground Tremor'),
('3291405','32914','0','0','100','3','2000','5000','40000','50000','11','62337','0','0','0','0','0','0','0','0','0','0','Elder Stonebark (Normal) - Cast Petrified Bark'),
('3291406','32914','0','0','100','5','2000','5000','40000','50000','11','62933','0','0','0','0','0','0','0','0','0','0','Elder Stonebark (Heroic) - Cast Petrified Bark'),
('3291407','32914','0','0','100','7','5000','7000','20000','30000','11','62344','0','0','0','0','0','0','0','0','0','0','Elder Stonebark - Cast Fists of Stone'),
('3291408','32914','6','0','100','6','0','0','0','0','1','-317','0','0','0','0','0','0','0','0','0','0','Elder Stonebark - Yell on Death'),
('3291801','32918','11','0','100','7','0','0','0','0','11','64481','0','2','11','28819','0','2','0','0','0','0','Detonating Lasher - Cast Reduce Critical Strike Chance -100% and Submerge Visual on Spawned'),
('3291802','32918','0','0','100','6','1000','1000','0','0','28','0','28819','0','0','0','0','0','0','0','0','0','Detonating Lasher - Remove Submerge Visua Aura'),
('3291803','32918','0','0','100','7','2000','3000','3000','5000','11','62608','1','0','0','0','0','0','0','0','0','0','Detonating Lasher - Cast Flame Lash (Rank 1)'),
('3291804','32918','6','0','100','2','0','0','0','0','11','62598','0','2','0','0','0','0','0','0','0','0','Detonating Lasher (Normal) - Cast Detonate on Death'),
('3291805','32918','6','0','100','4','0','0','0','0','11','62937','0','2','0','0','0','0','0','0','0','0','Detonating Lasher (Heroic) - Cast Detonate on Death'), 
('3320301','33203','11','0','100','6','0','0','0','0','11','62566','0','34','0','0','0','0','0','0','0','0','Ancient Conservator - Cast Healthy Spore Summon Periodic'),
('3320302','33203','0','0','100','6','1000','1000','0','0','11','62532','0','0','0','0','0','0','0','0','0','0','Ancient Conservator - Cast Conservator\'s Grip'),
('3320303','33203','0','0','100','3','5000','6000','10000','12000','11','62589','8','0','0','0','0','0','0','0','0','0','Ancient Conservator (Normal) - Cast Nature\'s Fury'),
('3320304','33203','0','0','100','5','5000','6000','10000','12000','11','63571','8','0','0','0','0','0','0','0','0','0','Ancient Conservator (Heroic) - Cast Nature\'s Fury'),
('3343101','33431','0','0','100','7','5000','10000','15000','20000','11','63059','0','0','0','0','0','0','0','0','0','0','Forest Swarmer - Cast Pollinate'), 
('3377201','33772','4','0','100','6','0','0','0','0','11','63703','0','0','0','0','0','0','0','0','0','0','Faceless Horror - Cast Void Wave on Aggro'),
('3377202','33772','0','0','100','7','6000','11000','13000','18000','11','64429','4','0','0','0','0','0','0','0','0','0','Faceless Horror - Cast Death Grip'),
('3377203','33772','0','0','100','7','6000','8000','8000','12000','11','63722','4','0','0','0','0','0','0','0','0','0','Faceless Horror - Cast Shadow Crash'),
('3377204','33772','0','0','100','7','60000','60000','60000','60000','11','63713','0','0','0','0','0','0','0','0','0','0','Faceless Horror - Cast Dominate Mind'),
('3377205','33772','2','0','100','6','75','50','0','0','11','63710','0','2','11','63708','0','2','1','-1047','0','0','Faceless Horror - Cast Void Barrier, Summon Void Beast and Yell text at 75% HP'),
('3377206','33772','2','0','100','6','50','25','0','0','11','63710','0','2','11','63708','0','2','1','-1047','0','0','Faceless Horror - Cast Void Barrier, Summon Void Beast and Yell text at 50% HP'),
('3377207','33772','2','0','100','6','25','0','0','0','11','63710','0','2','11','63708','0','2','1','-1047','0','0','Faceless Horror - Cast Void Barrier, Summon Void Beast and Yell text at 25% HP'),
('3377208','33772','25','0','100','7','33806','0','0','0','28','0','63710','0','0','0','0','0','0','0','0','0','Faceless Horror - Remove Void Barrier on Void Beast Death'), 
('3380601','33806','6','0','100','6','0','0','0','0','11','63723','0','2','0','0','0','0','0','0','0','0','Void Beast - Cast Shadow Nova on Death'),
('3317001','33170','11','0','100','6','0','0','0','0','11','62216','0','0','0','0','0','0','0','0','0','0','Sun Beam - Cast Unstable Sun Beam on Spawned'),
('3317002','33170','1','0','100','2','1000','1000','0','0','11','62451','0','0','0','0','0','0','0','0','0','0','Sun Beam (Normal) - Cast Unstable Energy'),
('3317003','33170','1','0','100','4','1000','1000','0','0','11','62865','0','0','0','0','0','0','0','0','0','0','Sun Beam (Heroic) - Cast Unstable Energy'); 
UPDATE creature_template SET AIName='EventAI' WHERE entry IN (32915 ,33050,32913,32914,32918,33203,33203,33431, 33772,33806,33170 );
UPDATE creature_template SET AIName = '' WHERE entry = 23789;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-426,-427,-428,-641,-320,-423,-424,-425,-25,-26,-27,-317,-1047);
INSERT into `creature_ai_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`,`emote`) VALUES
('-426','Matron, the Conservatory has been breached!','15483','1','0','32915','0'),
('-427','Fertilizer.','15485','1','0','32915','0'),
('-428','Your corpse will nourish the soil!','15486','1','0','32915','0'), 
('-641','Matron, one has fallen!','15487','1','0','32915','0'), 
('-320','Mortals have no place here!','15493','1','0','32913','0'),
('-423','I return you whence you came!','15494','1','0','32913','0'),
('-424','BEGONE!','15495','1','0','32913','0'),
('-425','Freya! They come for you.','15496','1','0','32913','0'),
('-25','This place will serve as your graveyard.','15500','1','0','32914','0'),
('-26','<Angry roar>','15501','1','0','32914','0'),
('-27','Such a waste.','15502','1','0','32914','0'), 
('-317','Matron, flee! They are ruthless....','15503','1','0','32914','0'),
('-1047','%s surrounds itself with a void barrier as a dark shadow coalesces nearby!','0','2','0','33772','0');
UPDATE `creature_ai_texts` SET `content_loc2` = 'Matrone, le Conservatoire a été violé !' WHERE `entry` = -426;
UPDATE `creature_ai_texts` SET `content_loc2` = 'Engrais' WHERE `entry` = -427;
UPDATE `creature_ai_texts` SET `content_loc2` = 'Votre corps va nourrir le sol!' WHERE `entry` = -428;
UPDATE `creature_ai_texts` SET `content_loc2` = 'Matrone, on est tombé !' WHERE `entry` = -641;
UPDATE `creature_ai_texts` SET `content_loc2` = 'Mortels n\'ont pas leur place ici !' WHERE `entry` = -320;
UPDATE `creature_ai_texts` SET `content_loc2` = 'Je vous renvoie d\'où vous venez!' WHERE `entry` = -423;
UPDATE `creature_ai_texts` SET `content_loc2` = 'PARTEZ!' WHERE `entry` = -424;
UPDATE `creature_ai_texts` SET `content_loc2` = 'Freya ! Ils viennent pour vous.' WHERE `entry` = -425;
UPDATE `creature_ai_texts` SET `content_loc2` = 'Cet endroit sera votre cimetière.' WHERE `entry` = -25;
UPDATE `creature_ai_texts` SET `content_loc2` = '< Rugissement furieux >' WHERE `entry` = -26;
UPDATE `creature_ai_texts` SET `content_loc2` = 'Un tel gaspillage.' WHERE `entry` = -27;
UPDATE `creature_ai_texts` SET `content_loc2` = 'Matrone, fuyez ! Ils sont sans pitié....' WHERE `entry` = -317;
UPDATE `creature_ai_texts` SET `content_loc2` = '%s s\'entoure d\'une barrière de vide comme une ombre fusionne à proximité!' WHERE `entry` = -1047;
