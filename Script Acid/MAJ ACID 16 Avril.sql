DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=18794);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('1879401','18794','11','0','100','6','0','0','0','0','21','0','0','0','0','0','0','0','30','1','3','5','Cabal Ritualist - Prevent Combat Movement and Random Phase Select on Spawn'),
('1879402','18794','4','0','10','38','0','0','0','0','1','-664','-665','-666','1','-667','-668','-669','1','-665','-666','-669','Cabal Ritualist - Random Say on Aggro'),
('1879403','18794','4','61','100','2','0','0','0','0','11','15497','1','0','0','0','0','0','0','0','0','0','Cabal Ritualist (Normal) - Cast Frostbolt on Aggro (Phase 1)'),
('1879404','18794','9','61','100','3','0','40','3600','4800','11','15497','1','0','0','0','0','0','0','0','0','0','Cabal Ritualist (Normal) - Cast Frostbolt (Phase 1)'),
('1879405','18794','4','61','100','4','0','0','0','0','11','12675','1','0','23','1','0','0','0','0','0','0','Cabal Ritualist (Heroic) - Cast Frostbolt on Aggro (Phase 1)'),
('1879406','18794','9','61','100','5','0','40','3600','4800','11','12675','1','0','0','0','0','0','0','0','0','0','Cabal Ritualist (Heroic) - Cast Frostbolt (Phase 1)'),
('1879407','18794','3','61','100','6','15','0','0','0','21','1','0','0','23','1','0','0','0','0','0','0','Cabal Ritualist - Start Combat Movement and Set Phase 2 when Mana is at 15% (Phase 1)'),
('1879408','18794','9','61','100','6','35','80','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Cabal Ritualist - Start Combat Movement at 35 Yards (Phase 1)'),
('1879409','18794','9','61','100','6','5','15','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Cabal Ritualist - Prevent Combat Movement at 15 Yards (Phase 1)'),
('1879410','18794','9','61','100','6','0','5','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Cabal Ritualist - Start Combat Movement Below 5 Yards (Phase 1)'),
('1879411','18794','9','61','100','3','0','8','12100','16900','11','15532','0','1','0','0','0','0','0','0','0','0','Cabal Ritualist (Normal) - Cast Frost Nova'),
('1879412','18794','9','61','100','5','0','8','12100','16900','11','15063','0','1','0','0','0','0','0','0','0','0','Cabal Ritualist (Heroic) - Cast Frost Nova'),
('1879413','18794','3','59','100','7','100','30','100','100','23','-1','0','0','0','0','0','0','0','0','0','0','Cabal Ritualist - Set Phase 1 when Mana is above 30% (Phase 2)'),
('1879414','18794','4','55','100','2','0','0','0','0','11','33833','1','0','0','0','0','0','0','0','0','0','Cabal Ritualist (Normal) - Cast Arcane Missiles on Aggro (Phase 3)'),
('1879415','18794','9','55','100','3','0','30','2400','3800','11','33833','1','0','0','0','0','0','0','0','0','0','Cabal Ritualist (Normal) - Cast Arcane Missiles (Phase 3)'),
('1879416','18794','4','55','100','4','0','0','0','0','11','38264','1','0','23','1','0','0','0','0','0','0','Cabal Ritualist (Heroic) - Cast Arcane Missiles on Aggro (Phase 3)'),
('1879417','18794','9','55','100','5','0','30','2400','3800','11','38264','1','0','0','0','0','0','0','0','0','0','Cabal Ritualist (Heroic) - Cast Arcane Missiles (Phase 3)'),
('1879418','18794','3','55','100','6','15','0','0','0','21','1','0','0','23','1','0','0','0','0','0','0','Cabal Ritualist - Start Combat Movement and Set Phase 2 when Mana is at 15% (Phase 3)'),
('1879419','18794','9','55','100','6','35','80','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Cabal Ritualist - Start Combat Movement at 35 Yards (Phase 3)'),
('1879420','18794','9','55','100','6','5','15','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Cabal Ritualist - Prevent Combat Movement at 15 Yards (Phase 3)'),
('1879421','18794','9','55','100','6','0','5','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Cabal Ritualist - Start Combat Movement Below 5 Yards (Phase 3)'),
('1879422','18794','0','55','100','7','2400','14300','5200','21700','11','33487','4','1','0','0','0','0','0','0','0','0','Cabal Ritualist - Cast Addle Humanoid (Phase 3)'),
('1879423','18794','3','47','100','7','100','30','100','100','23','-1','0','0','0','0','0','0','0','0','0','0','Cabal Ritualist - Set Phase 3 when Mana is above 30% (Phase 4)'),
('1879424','18794','4','31','100','6','0','0','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Cabal Ritualist - Start Combat Movement on Aggro (Phase 5)'),
('1879425','18794','0','31','100','7','3600','6200','4800','11200','11','9574','1','0','0','0','0','0','0','0','0','0','Cabal Ritualist - Cast Flame Buffet (Phase 5)'),
('1879426','18794','0','31','100','3','6100','20200','8400','22900','11','20795','1','0','0','0','0','0','0','0','0','0','Cabal Ritualist (Normal) - Cast Fire Blast (Phase 5)'),
('1879427','18794','0','31','100','5','6100','20200','8400','22900','11','14145','1','0','0','0','0','0','0','0','0','0','Cabal Ritualist (Heroic) - Cast Fire Blast (Phase 5)'),
('1879428','18794','9','31','100','7','0','5','12100','19300','11','12540','5','0','0','0','0','0','0','0','0','0','Cabal Ritualist - Cast Gouge (Phase 5)'),
('1879429','18794','2','0','100','6','15','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Cabal Ritualist - Flee at 15% HP'),
('1879430','18794','7','0','100','6','0','0','0','0','22','0','0','0','0','0','0','0','0','0','0','0','Cabal Ritualist - Set Phase to 0 on Evade'),
('1879431','18794','21','0','100','6','0','0','0','0','11','32958','0','0','0','0','0','0','0','0','0','0','Cabal Ritualist - Cast Crystal Channel on Reaching Home'),
('1879432','18794','1','0','100','6','1000','1000','0','0','11','32958','0','0','0','0','0','0','0','0','0','0','Cabal Ritualist - Cast Crystal Channel on OOC Timer');
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=23069);
INSERT INTO `creature_ai_scripts` VALUES 
(2306901, 23069, 11, 0, 100, 2, 0, 0, 0, 0, 11, 40029, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Fire - Cast Demon Fire on Spawned');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 23069;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=25603);
INSERT INTO `creature_ai_scripts` VALUES 
('2560301','25603','11','0','100','2','0','0','0','0','11','46464','0','0','0','0','0','0','0','0','0','0','Felfire Portal - Cast Summon Felfire Fiend on Spawned');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 25603;
UPDATE db_version SET `creature_ai_version` = 'ACID 3.1.0 \'Another Wild Adventure\' - Full Release for CMaNGOS-WOTLK (3.3.5a Client)';
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=24895);
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 24895;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=29830);
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 29830;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=29395);
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 29395;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=29199);
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 29199;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=29200);
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 29200;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=29204);
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 29204;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=23469);
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 23469;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=15929);
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 15929;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=15930);
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 15930;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=15339);
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 15339;
DELETE FROM `creature_ai_texts` WHERE (`entry`='-698');
DELETE FROM `creature_ai_texts` WHERE (`entry`='-699');
DELETE FROM `creature_ai_texts` WHERE (`entry`='-700');
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=14750);
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 14750;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=4508);
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 4508;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=15261);
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 15261;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=18374);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('1837401','18374','1','0','100','6','5000','5000','0','0','11','32301','0','0','0','0','0','0','0','0','0','0','Focus Fire - Cast Ping Shirrak on OOC Timer');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 18374;
