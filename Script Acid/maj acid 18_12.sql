Delete from `creature_ai_scripts` where `id`=2196001;
Insert into `creature_ai_scripts` values 
('2196001','21960','1','0','40','1','2000','20000','35000','60000','11','38053','0','0','0','0','0','0','0','0','0','0','Gan\'arg Technician - Cast Tune Deathforge Infernal while OOC');
UPDATE creature_template SET AIName='EventAI' WHERE `entry` = '21960';
-- Creature id: 34149
UPDATE creature_template SET AIName='EventAI' , Scriptname='' WHERE entry=34149;
DELETE FROM creature_ai_scripts WHERE creature_id=34149;
INSERT INTO creature_ai_scripts VALUES 
('3414901','34149','11','0','100','7','0','0','0','0','21','0','0','0','20','0','0','0','11','64624','0','0','Forst Bomb - disable Movement and Autoattack and cast visual'),
('3414902','34149','29','0','100','6','10000','10000','0','0','11','64626','0','0','0','0','0','0','0','0','0','0','Frost Bomb - Cast Explode'),
('3414903','34149','29','0','100','6','12000','12000','0','0','11','65354','0','0','41','4000','0','0','0','0','0','0','Frost Bomb - Cast Clear Fires and Despawn');
Delete from `creature_ai_scripts` where `creature_id`=22113;
Insert into `creature_ai_scripts` values 
('2211301','22113','9','0','100','1','5','40','6000','9000','40','2','0','0','11','38370','1','0','0','0','0','0','Mordenai - Set Ranged Weapon Model and Cast Aimed Shot'),
('2211302','22113','9','0','100','1','40','90','0','0','21','1','1','0','20','1','0','0','0','0','0','0','Mordenai - Start Combat Movement and Start Melee over 40th yard'),
('2211303','22113','9','0','100','1','5','40','0','0','21','0','1','0','20','0','0','0','0','0','0','0','Mordenai - Prevent Combat Movement and Prevent Melee between 5 and 40 yards'),
('2211304','22113','9','0','100','1','0','5','0','0','21','1','0','0','40','1','0','0','20','1','0','0','Mordenai - Start Combat Movement and Set Melee Weapon Model and Start Melee Below 5 yards'),
('2211305','22113','2','0','100','0','15','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Mordenai - Flee at 15% HP'),
('2211306','22113','7','0','100','0','0','0','0','0','0','0','0','0','40','1','0','0','0','0','0','0','Mordenai -  Set Melee Weapon Model on Evade'),
('2211307','22113','9','0','100','1','5','30','2200','2700','11','38372','1','0','40','2','0','0','0','0','0','0','Mordenai - Set Ranged Weapon Model and Cast Shoot'),
('2211308','22113','9','0','100','1','5','35','4500','5500','40','2','0','0','11','36623','1','0','0','0','0','0','Mordenai - Set Ranged Weapon Model and Cast Arcane Shot'),
('2211309','22113','0','0','100','1','2000','2500','9500','11500','40','2','0','0','11','36732','1','0','0','0','0','0','Mordenai - Set Ranged Weapon Model and Cast Scatter Shot');
UPDATE creature_template SET AIName='EventAI' WHERE `entry` = '22113';
-- Jaraxxus
-- Felflame infernal
UPDATE `creature_template` SET `AIName`='EventAI' WHERE `entry`=34815;
DELETE FROM `creature_ai_scripts` WHERE `id`=3481501;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
(3481501,34815,0,0,100,31,7000,10000,8000,10000,11,67047,0,0,0,0,0,0,0,0,0,0, 'Felflame infernal - cast Fel Inferno');
DELETE FROM `creature_ai_scripts` WHERE `id`=3481502;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
(3481502,34815,0,0,100,31,7000,10000,8000,10000,11,66519,4,0,0,0,0,0,0,0,0,0, 'Felflame infernal - cast Fel Steak');
-- Mistress of pain
UPDATE `creature_template` SET `AIName`='EventAI' WHERE `entry`=34826;
DELETE FROM `creature_ai_scripts` WHERE `id`=3482601;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
(3482601,34826,0,0,100,31,7000,10000,5000,8000,11,66378,0,0,0,0,0,0,0,0,0,0, 'Mistress of pain - cast Shivan slash');
DELETE FROM `creature_ai_scripts` WHERE `id`=3482602;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
(3482602,34826,0,0,100,31,7000,10000,5000,8000,11,66283,4,0,0,0,0,0,0,0,0,0, 'Mistress of pain - cast Spinning pain spike');
DELETE FROM `creature_ai_scripts` WHERE `id`=3482603;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
(3482603,34826,0,0,100,25,13000,15000,12000,16000,11,66425,0,0,0,0,0,0,0,0,0,0, 'Mistress of pain - cast Mistress Kiss');
-- Legion flame
UPDATE `creature_template` SET `AIName`='EventAI' WHERE `entry`=34784;
DELETE FROM `creature_ai_scripts` WHERE `id`=3478401;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
(3478401,34784,11,0,100,30,0,0,0,0,11,66201,0,0,0,0,0,0,0,0,0,0, 'Legion Flame - cast Legion Flame');

-- Beasts
-- Firebomb
UPDATE `creature_template` SET `AIName`='EventAI' WHERE `entry`=34854;
DELETE FROM `creature_ai_scripts` WHERE `id`=3485401;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
(3485401,34854,11,0,100,30,0,0,0,0,11,66318,0,0,0,0,0,0,0,0,0,0, 'Firebomb - cast Firebomb aura');
-- Snobold
UPDATE `creature_template` SET `AIName`='EventAI' WHERE `entry`=34800;
DELETE FROM `creature_ai_scripts` WHERE `id`=3480001;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
(3480001,34800,0,0,100,31,3000,5000,4000,6000,11,66408,1,0,0,0,0,0,0,0,0,0, 'Snobold vassal - cast Batter');
DELETE FROM `creature_ai_scripts` WHERE `id`=3480002;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
(3480002,34800,0,0,100,31,5000,8000,7000,9000,11,66407,1,0,0,0,0,0,0,0,0,0, 'Snobold vassal - cast Headcrack');
DELETE FROM `creature_ai_scripts` WHERE `id`=3480003;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES 
(3480003,34800,0,0,100,31,10000,15000,10000,15000,11,66313,0,0,0,0,0,0,0,0,0,0, 'Snobold vassal - cast Firebomb');
UPDATE creature_template SET AIName='EventAI' WHERE entry=17664;
DELETE FROM creature_ai_scripts WHERE creature_id=17664;
INSERT INTO creature_ai_scripts VALUES 
('1766401','17664','4','0','100','0','0','0','0','0','43','0','0','0','0','0','0','0','0','0','0','0','Matis the Cruel - Unmount on Aggro'),
('1766402','17664','6','0','100','0','0','0','0','0','11','31336','0','2','0','0','0','0','0','0','0','0','Matis the Cruel - Cast Matis Captured DND on Death');
-- Crazed Colossus
UPDATE creature_template SET AIName='EventAI' WHERE entry=19823;
DELETE FROM creature_ai_scripts WHERE creature_id=19823;
INSERT INTO creature_ai_scripts VALUES 
('1982301','19823','6','0','100','0','0','0','0','0','11','38223','6','7','0','0','0','0','0','0','0','0','Crazed Colossus - Cast Quest Credit: Crazed Colossus on Death');
