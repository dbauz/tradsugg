-- Lord Gregor Lescovar
Delete from `creature_ai_scripts` where `id`=175401;
Insert into `creature_ai_scripts` values 
('175401','1754','0','0','100','0','1000','1000','0','0','1','-9000','0','0','0','0','0','0','0','0','0','0','Lord Gregor Lescovar - Say on Aggro');
UPDATE creature_template SET AIName='EventAI' WHERE `entry` = '1754';
DELETE FROM `creature_ai_texts` WHERE `entry` =-9000;
INSERT into `creature_ai_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`,`emote`) VALUES
('-9000','What? How dare you!','0','0','0','1754','0');
UPDATE `creature_ai_texts` SET `content_loc2`='Quoi? Comment osez-vous!' WHERE (`entry`='-9000');
-- Marzon the Silent Blade
Delete from `creature_ai_scripts` where `id`=175501;
Insert into `creature_ai_scripts` values 
('175501','1755','0','0','100','0','1000','1000','0','0','1','-9001','0','0','0','0','0','0','0','0','0','0','Lord Gregor Lescovar - Say on Aggro');
UPDATE creature_template SET AIName='EventAI' WHERE `entry` = '1755';
DELETE FROM `creature_ai_texts` WHERE `entry` =-9001;
INSERT into `creature_ai_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`,`emote`) VALUES
('-9001',' The Defias shall succeed! No meek adventurer will stop us!','0','0','0','1755','0');
UPDATE `creature_ai_texts` SET `content_loc2`='Les défias doivent réussir ! Aucun aventurier doux ne nous arrêtera !' WHERE (`entry`='-9001');