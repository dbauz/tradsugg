DELETE FROM `creature_ai_scripts` WHERE id IN (2765402,2971301,2971302,2763916,2764003,2764101,2764102,2764103,2816601,2816602);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('2971301','29713','0','0','100','3','3000','5000','7000','9000','11','55093','1','0','0','0','0','0','0','0','0','0','Slad\'ran Constrictor (Normal) - Cast Grip of Slad\'ran'),
('2971302','29713','0','0','100','5','3000','5000','7000','9000','11','61474','1','0','0','0','0','0','0','0','0','0','Slad\'ran Constrictor (Heroic) - Cast Grip of Slad\'ran'),
('2763916','27639','1','0','100','6','1000','1000','1000','1000','11','50036','0','0','0','0','0','0','0','0','0','0','Ring-Lord Sorcerress - Cast Nexus Energy Cosmetic on OOC Timer'),
('2764003','27640','1','0','100','6','1000','1000','1000','1000','11','50036','0','0','0','0','0','0','0','0','0','0','Ring-Lord Conjurer - Cast Nexus Energy Cosmetic on OOC Timer'),
('2764101','27641','1','0','100','6','1000','1000','1000','1000','35','1','0','0','11','50088','0','0','0','0','0','0','Centrifuge Construct - Set Instance Data64 (SD2) and Cast Energy Link on OOC Timer'),
('2764102','27641','4','0','100','2','0','0','0','0','11','50044','0','0','0','0','0','0','0','0','0','0','Centrifuge Construct (Normal) - Cast Empowering Blows on Aggro'),
('2764103','27641','4','0','100','4','0','0','0','0','11','59213','0','0','0','0','0','0','0','0','0','0','Centrifuge Construct (Heroic) - Cast Empowering Blows on Aggro'),
('2765402','27654','0','0','100','7','6000','11000','14000','21000','11','51336','0','1','1','-1154','-1155','-1156','1','-544','0','0','Drakos the Interrogator - Cast Magic Pull, Random Yell and Emote'),
('2816601','28166','11','0','100','6','0','0','0','0','11','51347','0','2','11','50756','0','2','11','50758','0','2','Unstable Sphere - Cast Teleport Visual Only, Unstable Sphere Passive and Unstable Sphere Timer on Spawned'),
('2816602','28166','1','0','100','7','7000','7000','4000','5000','11','50757','0','0','0','0','0','0','0','0','0','0','Unstable Sphere - Cast Unstable Sphere Pulse on OOC Timer');
UPDATE creature_template SET AIName='EventAI' WHERE entry IN (29713,27639,27640,27641,27654,28166);
INSERT INTO `creature_ai_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`,`emote`) VALUES
('-544','%s begins to cast Magic Pull!','0','3','0','27654','0');
