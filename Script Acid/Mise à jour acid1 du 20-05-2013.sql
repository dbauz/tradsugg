DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=7604);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('760401','7604','4','0','100','2','0','0','0','0','11','3637','0','0','0','0','0','0','0','0','0','0','Sergeant Bly - Cast Improved Blocking III on Aggro'),
('760402','7604','0','0','100','3','8000','10000','8000','10000','11','12170','1','0','0','0','0','0','0','0','0','0','Sergeant Bly - Cast Revenge'),
('760403','7604','0','0','100','3','5000','8000','13000','15000','11','11972','1','0','0','0','0','0','0','0','0','0','Sergeant Bly - Cast Shield Bash');
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=7607);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('760701','7607','11','0','100','2','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Weegli Blastfuse - prevent Combat Movement on Spawned'),
('760702','7607','9','0','100','3','35','80','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Weegli Blastfuse - Start Combat Movement at 35 Yards'),
('760703','7607','9','0','100','3','5','15','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Weegli Blastfuse - Prevent Combat Movement at Below 5 Yards'),
('760704','7607','0','0','100','3','2000','3000','3000','4000','11','6660','1','0','0','0','0','0','0','0','0','0','Weegli Blastfuse - Cast Shoot'),
('760705','7607','0','0','100','3','5000','7000','6000','11000','11','8858','4','0','0','0','0','0','0','0','0','0','Weegli Blastfuse - Cast Bomb'),
('760706','7607','0','0','100','3','7000','11000','30000','35000','11','21688','0','0','0','0','0','0','0','0','0','0','Weegli Blastfuse - Cast Goblin Land Mine');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` IN (7604,7607);
DELETE FROM `creature_ai_scripts` WHERE(`creature_id`=25755);
DELETE FROM `creature_ai_scripts` WHERE(`creature_id`=25756);
DELETE FROM `creature_ai_scripts` WHERE(`creature_id`=25757);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('2575501','25755','11','0','100','2','0','0','0','0','11','46542','0','0','0','0','0','0','0','0','0','0','Ahunite Hailstone (Normal) - Cast Chilling Aura on Spawned'),
('2575502','25755','11','0','100','4','0','0','0','0','11','46885','0','0','0','0','0','0','0','0','0','0','Ahunite Hailstone (Heroic) - Cast Chilling Aura on Spawned'),
('2575601','25756','0','0','100','3','1000','1000','4000','5000','11','46406','1','0','0','0','0','0','0','0','0','0','Ahunite Coldwave (Normal) - Cast Bitter Blast'),
('2575602','25756','0','0','100','5','1000','1000','4000','5000','11','46887','1','0','0','0','0','0','0','0','0','0','Ahunite Coldwave (Heroic) - Cast Bitter Blast'),
('2575701','25757','0','0','100','7','3000','6000','4000','7000','11','46568','1','0','0','0','0','0','0','0','0','0','Ahunite Frostwind - Cast Wind Buffet');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` IN (25755,25756,25757);
DELETE FROM `creature_ai_texts` WHERE(`entry`=-23);
DELETE FROM `creature_ai_texts` WHERE(`entry`=-24);
INSERT INTO `creature_ai_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`,`emote`) VALUES
('-23','Cipher of Damnation belongs to us now!','0','0','0','20427','0'),
('-24','The master will know of this incursion. You will be hunted for all eternity!','0','0','0','20427','0');
DELETE FROM `creature_ai_scripts` WHERE(`creature_id`=20427);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('2042701','20427','11','0','100','0','0','0','0','0','11','24240','0','0','0','0','0','0','0','0','0','0','Veneratus the Many - Cast Spawn - Red Lightning on Spawned'),
('2042702','20427','4','0','100','0','0','0','0','0','1','-23','-24','0','0','0','0','0','0','0','0','0','Veneratus the Many - Yell on Aggro');
UPDATE `creature_ai_texts` SET `content_loc2` = 'Chiffrement de Damnation  nous appartient  maintenant !' WHERE `entry` =-23 ;
UPDATE `creature_ai_texts` SET `content_loc2` = 'Le maître va connaître de cette incursion. Vous serez chassés pour toute l\'éternité!' WHERE `entry` =-24;
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` IN (20427);
DELETE FROM `creature_ai_scripts` WHERE (`id`= 1863401);
DELETE FROM `creature_ai_scripts` WHERE (`id`= 866601);
DELETE FROM `creature_ai_scripts` WHERE (`id`= 866602);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('866602','8666','1','0','100','32','0','0','180000','180000','1','-1311','-1312','-1313','1','-1314','-1315','-1316','0','0','0','0','Lil Timmy - Random Say OOC'); 
DELETE FROM `creature_ai_texts` WHERE(`entry`=-1310);
DELETE FROM `creature_ai_texts` WHERE(`entry`=-1311);
DELETE FROM `creature_ai_texts` WHERE(`entry`=-1312);
DELETE FROM `creature_ai_texts` WHERE(`entry`=-1313);
DELETE FROM `creature_ai_texts` WHERE(`entry`=-1314);
DELETE FROM `creature_ai_texts` WHERE(`entry`=-1315);
DELETE FROM `creature_ai_texts` WHERE(`entry`=-1316);
INSERT INTO `creature_ai_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`,`emote`) VALUES
('-1310','Welcome to flavor country!','0','0','0','11058','0'),
('-1311','Kitten for sale, looking for a good home.','0','0','0','8666','0'),
('-1312','I can\'t believe dad won\'t let me keep your sister.','0','0','0','8666','0'),
('-1313','Can anyone give my adorable, extra little kitty a home?','0','0','0','8666','0'),
('-1314','What does allergic mean anyway? And what does it have to do with either of my kitties?','0','0','0','8666','0'),
('-1315','Will someone please give my little kitten a good home?','0','0','0','8666','0'),
('-1316','Don\'t worry, I\'ll find a good home for ya.','0','0','0','8666','0');
UPDATE `creature_ai_texts` SET `content_loc2` = 'Bienvenue au pays du goût!' WHERE `entry` = -1310;
UPDATE `creature_ai_texts` SET `content_loc2` = 'Chaton à la vente, à la recherche d\'une bonne maison.' WHERE `entry` = -1311;
UPDATE `creature_ai_texts` SET `content_loc2` = 'Je ne peux pas croire que papa ne va pas me laisser votre sœur.' WHERE `entry` = -1312;
UPDATE `creature_ai_texts` SET `content_loc2` = 'Quelqu\'un peut-il donner une maison supplémentaire,  à mon petit chaton adorable ?' WHERE `entry` = -1313;
UPDATE `creature_ai_texts` SET `content_loc2` = 'Qu\'est-ce allergique signifie de toute façon? Et qu\'est-ce que cela a à voir avec l\'un de mes chatons?' WHERE `entry` = -1314;
UPDATE `creature_ai_texts` SET `content_loc2` = 'Est-ce que quelqu\'un s\'il vous plaît peut donner mon petit chaton une bonne maison?' WHERE `entry` = -1315;
UPDATE `creature_ai_texts` SET `content_loc2` = 'Ne t\'inquiétes pas, je vais trouver un bon foyer pour toi.' WHERE `entry` = -1316;
DELETE FROM `creature_ai_scripts` WHERE(`creature_id`=34043);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('3404301','34043','1','0','100','0','0','0','0','0','21','0','0','0','22','0','0','0','0','0','0','0','Lady Palanseer - Prevent Combat Movement and Set Phase to 0 on Spawn'),
('3404302','34043','4','0','100','0','0','0','0','0','11','9613','6','0','23','1','0','0','0','0','0','0','Lady Palanseer - Cast Shadow Bolt and Set Phase 1 on Aggro'),
('3404303','34043','9','5','100','1','0','40','3400','4800','11','9613','1','0','0','0','0','0','0','0','0','0','Lady Palanseer - Cast Shadow Bolt (Phase 1)'),
('3404304','34043','0','5','100','1','5000','10000','5000','10000','11','32932','0','33','0','0','0','0','0','0','0','0','Lady Palanseer - Cast Sun Shield (Phase 1)'),
('3404305','34043','3','5','100','0','7','0','0','0','21','1','0','0','23','1','0','0','0','0','0','0','Lady Palanseer - Start Combat Movement and Set Phase 2 when Mana is at 7% (Phase 1)'),
('3404306','34043','9','5','100','0','35','80','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Lady Palanseer - Start Combat Movement at 35 Yards (Phase 1)'),
('3404307','34043','9','5','100','0','5','15','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Lady Palanseer - Prevent Combat Movement at 15 Yards (Phase 1)'),
('3404308','34043','9','5','100','0','0','5','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Lady Palanseer - Start Combat Movement Below 5 Yards (Phase 1)'),
('3404309','34043','3','3','100','1','100','15','100','100','23','-1','0','0','0','0','0','0','0','0','0','0','Lady Palanseer - Set Phase 1 when Mana is above 15% (Phase 2)'),
('3404310','34043','27','0','100','1','12544','1','15000','30000','11','12544','0','1','0','0','0','0','0','0','0','0','Lady Palanseer - Cast Frost Armor on Missing Buff'),
('3404311','34043','7','0','100','0','0','0','0','0','22','0','0','0','0','0','0','0','0','0','0','0','Lady Palanseer - Set Phase to 0 on Evade');
UPDATE creature_template SET AIName='EventAI' WHERE entry=34043;
DELETE FROM `creature_ai_scripts` WHERE(`creature_id`=14375);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('1437501','14375','4','0','100','0','0','0','0','0','23','1','0','0','0','0','0','0','0','0','0','0','Scout Stronghand - Set Phase 1 on Aggro'),
('1437502','14375','9','5','100','1','0','5','5000','9000','11','15572','1','0','0','0','0','0','0','0','0','0','Scout Stronghand - Cast Sunder Armor (Phase 1)'),
('1437503','14375','24','5','100','1','15572','5','5000','5000','23','1','0','0','0','0','0','0','0','0','0','0','Scout Stronghand - Set Phase 2 on Target Max Sunder Armor Aura Stack (Phase 1)'),
('1437504','14375','28','3','100','1','15572','1','5000','5000','23','-1','0','0','0','0','0','0','0','0','0','0','Scout Stronghand - Set Phase 1 on Target Missing Sunder Armor Aura Stack (Phase 2)'),
('1437505','14375','9','0','100','1','15','30','8000','12000','11','14030','1','1','0','0','0','0','0','0','0','0','Scout Stronghand - Cast Hooked Net'),
('1437506','14375','7','0','100','0','0','0','0','0','22','0','0','0','0','0','0','0','0','0','0','0','Scout Stronghand - Set Phase to 0 on Evade');
UPDATE creature_template SET AIName='EventAI' WHERE entry=14375;

