DELETE FROM creature_ai_scripts WHERE creature_id=21806;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('2180601','21806','1','0','100','2','10000','10000','0','0','11','37626','0','0','0','0','0','0','0','0','0','0','Greyheart Spellbinder - Cast Green Beam on OOC Timer'),
('2180602','21806','0','0','100','3','6800','10700','10300','13600','11','37531','4','0','0','0','0','0','0','0','0','0','Greyheart Spellbinder - Cast Mind Blast'),
('2180603','21806','13','0','100','3','8000','12000','0','0','11','39076','6','1','0','0','0','0','0','0','0','0','Greyheart Spellbinder - Cast Spell Shock on Target Spell Casting');
DELETE FROM creature_ai_scripts WHERE creature_id=21217;
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 21217;
DELETE FROM creature_ai_scripts WHERE creature_id=2428;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('242801','2428','1','0','100','0','0','0','0','0','21','0','0','0','20','0','0','0','23','1','0','0','Jailor Marlgen - Prevent Combat Movement and Prevent Melee and Set Phase 1 on Spawn'),
('242802','2428','9','5','100','1','5','30','2300','3900','11','6660','1','0','40','2','0','0','0','0','0','0','Jailor Marlgen - Cast Shoot and Set Ranged Weapon Model (Phase 1)'),
('242803','2428','9','5','100','1','30','80','0','0','21','1','1','0','20','1','0','0','0','0','0','0','Jailor Marlgen - Start Combat Movement and Start Melee at 30 Yards (Phase 1)'),
('242804','2428','9','5','100','1','0','10','0','0','21','1','0','0','40','1','0','0','20','1','0','0','Jailor Marlgen - Start Combat Movement and Set Melee Weapon Model and Start Melee at 10 Yards (Phase 1)'),
('242805','2428','9','5','100','1','11','25','0','0','21','0','1','0','20','0','0','0','0','0','0','0','Jailor Marlgen - Prevent Combat Movement and Prevent Melee at 25 Yards (Phase 1)'),
('242806','2428','9','0','100','1','0','20','7000','11000','11','6533','1','1','0','0','0','0','0','0','0','0','Jailor Marlgen - Cast Net'),
('242807','2428','2','0','100','0','15','0','0','0','23','1','0','0','0','0','0','0','0','0','0','0','Jailor Marlgen - Set Phase 2 at 15% HP'),
('242808','2428','2','3','100','0','15','0','0','0','21','1','0','0','25','0','0','0','1','-47','0','0','Jailor Marlgen - Start Combat Movement and Flee at 15% HP (Phase 2)'),
('242809','2428','7','0','100','0','0','0','0','0','22','1','0','0','40','1','0','0','0','0','0','0','Jailor Marlgen - Set Phase 1 and Set Melee Weapon Model on Evade');
DELETE FROM creature_ai_scripts WHERE creature_id=11680;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('1168001','11680','1','0','100','0','0','0','0','0','21','0','0','0','20','0','0','0','23','1','0','0','Horde Scout - Prevent Combat Movement and Prevent Melee and Set Phase 1 on Spawn'),
('1168002','11680','9','5','100','1','5','30','2300','3900','11','6660','1','0','40','2','0','0','0','0','0','0','Horde Scout - Cast Shoot and Set Ranged Weapon Model (Phase 1)'),
('1168003','11680','9','5','100','1','5','30','12000','15000','11','18545','1','0','40','2','0','0','0','0','0','0','Horde Scout - Cast Scorpid Sting and Set Ranged Weapon Model (Phase 1)'),
('1168004','11680','9','5','100','1','30','80','0','0','21','1','1','0','20','1','0','0','0','0','0','0','Horde Scout - Start Combat Movement and Start Melee at 30 Yards (Phase 1)'),
('1168005','11680','9','5','100','1','0','10','0','0','21','1','0','0','40','1','0','0','20','1','0','0','Horde Scout - Start Combat Movement and Set Melee Weapon Model and Start Melee Below 10 Yards (Phase 1)'),
('1168006','11680','9','5','100','1','11','25','0','0','21','0','1','0','20','0','0','0','0','0','0','0','Horde Scout - Prevent Combat Movement and Prevent Melee at 25 Yards (Phase 1)'),
('1168007','11680','2','0','100','0','15','0','0','0','23','1','0','0','0','0','0','0','0','0','0','0','Horde Scout - Set Phase 2 at 15% HP'),
('1168008','11680','2','3','100','0','15','0','0','0','21','1','0','0','25','0','0','0','1','-47','0','0','Horde Scout - Start Combat Movement and Flee at 15% HP (Phase 2)'),
('1168009','11680','7','0','100','0','0','0','0','0','22','1','0','0','40','1','0','0','0','0','0','0','Horde Scout - Set Phase 1 and Set Melee Weapon Model on Evade');
DELETE FROM creature_ai_scripts WHERE creature_id=28034;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('2803401','28034','1','0','100','0','0','0','0','0','21','0','0','0','20','0','0','0','23','1','0','0','Drakkari Snake Handler - Prevent Combat Movement and Prevent Melee and Set Phase 1 on Spawn'),
('2803402','28034','9','5','100','1','5','30','2300','3900','11','6660','1','0','40','2','0','0','0','0','0','0','Drakkari Snake Handler - Cast Shoot and Set Ranged Weapon Model (Phase 1)'),
('2803403','28034','9','5','100','1','30','80','0','0','21','1','1','0','20','1','0','0','0','0','0','0','Drakkari Snake Handler - Start Combat Movement and Start Melee at 30 Yards (Phase 1)'),
('2803404','28034','9','5','100','1','0','10','0','0','21','1','0','0','40','1','0','0','20','1','0','0','Drakkari Snake Handler - Start Combat Movement and Set Melee Weapon Model and Start Melee Below 10 Yards (Phase 1)'),
('2803405','28034','9','5','100','1','11','25','0','0','21','0','1','0','20','0','0','0','0','0','0','0','Drakkari Snake Handler - Prevent Combat Movement and Prevent Melee at 25 Yards (Phase 1)'),
('2803406','28034','0','0','100','1','3000','5000','20000','30000','11','54484','0','1','0','0','0','0','0','0','0','0','Drakkari Snake Handler - Summon Drakkari Snake'),
('2803407','28034','2','0','100','1','30','0','120000','130000','11','54482','0','1','0','0','0','0','0','0','0','0','Drakkari Snake Handler - Cast Blood of Sseratus at 30% HP'),
('2803408','28034','2','0','100','0','15','0','0','0','23','1','0','0','0','0','0','0','0','0','0','0','Drakkari Snake Handler - Set Phase 2 at 15% HP'),
('2803409','28034','2','3','100','0','15','0','0','0','21','1','0','0','25','0','0','0','1','-47','0','0','Drakkari Snake Handler - Start Combat Movement and Flee at 15% HP (Phase 2)'),
('2803410','28034','7','0','100','0','0','0','0','0','22','1','0','0','40','1','0','0','21','0','0','0','Drakkari Snake Handler - Set Phase to 1 and Set Melee Weapon Model and Prevent Combat Movement on Evade');
DELETE FROM creature_ai_scripts WHERE creature_id=26670;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('2667001','26670','1','0','100','6','0','0','0','0','21','0','0','0','20','0','0','0','23','1','0','0','Ymirjar Flesh Hunter - Prevent Combat Movement and Prevent Melee and Set Phase 1 on Spawn'),
('2667002','26670','9','5','100','3','5','30','5000','8000','11','48854','1','0','40','2','0','0','0','0','0','0','Ymirjar Flesh Hunter (Normal) - Cast Shoot and Set Ranged Weapon Model (Phase 1)'),
('2667003','26670','9','5','100','5','5','30','5000','8000','11','59241','1','0','40','2','0','0','0','0','0','0','Ymirjar Flesh Hunter (Heroic) - Cast Shoot and Set Ranged Weapon Model (Phase 1)'),
('2667004','26670','0','5','100','3','9000','14000','22000','26000','11','48871','4','0','40','2','0','0','0','0','0','0','Ymirjar Flesh Hunter (Normal) - Cast Aimed Shot and Set Ranged Weapon Model (Phase 1)'),
('2667005','26670','0','5','100','5','9000','14000','22000','26000','11','59243','4','0','40','2','0','0','0','0','0','0','Ymirjar Flesh Hunter (Heroic) - Cast Aimed Shot and Set Ranged Weapon Model (Phase 1)'),
('2667006','26670','0','5','100','3','14000','17000','24000','27000','11','48872','5','1','40','2','0','0','0','0','0','0','Ymirjar Flesh Hunter (Normal) - Cast Multi Shot and Set Ranged Weapon Model (Phase 1)'),
('2667007','26670','0','5','100','5','14000','17000','24000','27000','11','59244','5','1','40','2','0','0','0','0','0','0','Ymirjar Flesh Hunter (Heroic) - Cast Multi Shot and Set Ranged Weapon Model (Phase 1)'),
('2667008','26670','9','5','100','6','30','80','0','0','21','1','1','0','20','1','0','0','0','0','0','0','Ymirjar Flesh Hunter - Start Combat Movement and Start Melee at 30 Yards (Phase 1)'),
('2667009','26670','9','5','100','6','0','10','0','0','21','1','0','0','40','1','0','0','20','1','0','0','Ymirjar Flesh Hunter - Start Combat Movement and Set Melee Weapon Model and Start Melee Below 10 Yards (Phase 1)'),
('2667010','26670','9','5','100','6','11','25','0','0','21','0','1','0','20','0','0','0','0','0','0','0','Ymirjar Flesh Hunter - Prevent Combat Movement and Prevent Melee at 25 Yards (Phase 1)'),
('2667011','26670','2','0','100','6','15','0','0','0','23','1','0','0','0','0','0','0','0','0','0','0','Ymirjar Flesh Hunter - Set Phase 2 at 15% HP'),
('2667012','26670','2','3','100','6','15','0','0','0','21','1','0','0','25','0','0','0','1','-47','0','0','Ymirjar Flesh Hunter - Start Combat Movement and Flee at 15% HP (Phase 2)'),
('2667013','26670','7','0','100','6','0','0','0','0','22','1','0','0','40','1','0','0','0','0','0','0','Ymirjar Flesh Hunter - Set Phase 1 and Set Melee Weapon Model on Evade');
