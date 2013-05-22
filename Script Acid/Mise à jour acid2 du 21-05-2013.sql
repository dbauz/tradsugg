DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=6072);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('607201','6072','0','0','100','1','8000','12000','7000','13000','11','37624','1','0','0','0','0','0','0','0','0','0','Diathorus the Seeker - Cast Carrion Swarm'),
('607202','6072','2','0','100','1','75','0','22100','32600','11','18557','1','0','0','0','0','0','0','0','0','0','Diathorus the Seeker - Cast Drain Life at 75% HP'),
('607203','6072','2','0','100','0','50','0','0','0','39','20','0','0','1','-551','0','0','0','0','0','0','Diathorus the Seeker - Call For Help and Emote at 50% HP');
UPDATE creature_template SET AIName='EventAI' WHERE entry=6072;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`= 4619);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('461901','4619','0','0','100','1','5000','9000','7000','12000','11','35913','1','0','0','0','0','0','0','0','0','0','Geltharis - Cast Fel Fireball'),
('461902','4619','0','0','100','1','10000','15000','17000','21000','11','37628','1','0','0','0','0','0','0','0','0','0','Geltharis - Cast Fel Immolate'),
('461903','4619','0','0','100','1','8000','14000','9000','16000','11','7098','4','33','0','0','0','0','0','0','0','0','Geltharis - Cast Curse of Mending'),
('461904','4619','2','0','100','1','20','0','15000','25000','11','6925','0','1','0','0','0','0','0','0','0','0','Geltharis - Cast Gift of the Xavian at 20% HP');
UPDATE creature_template SET AIName='EventAI' WHERE entry=4619;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=3932);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('393201','3932','2','0','100','0','30','0','0','0','11','8599','0','1','1','-106','0','0','0','0','0','0','Bloodtooth Guard - Cast Enrage at 30% HP');
UPDATE creature_template SET AIName='EventAI' WHERE entry=3932;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=3845);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('384501','3845','1','0','100','0','0','0','0','0','21','0','0','0','20','0','0','0','23','1','0','0','Shindrell Swiftfire - Prevent Combat Movement and Prevent Melee and Set Phase 1 on Spawn'),
('384502','3845','9','1','100','1','5','30','2300','3900','11','15547','1','0','40','2','0','0','0','0','0','0','Shindrell Swiftfire - Cast Shoot and Set Ranged Weapon Model (Phase 1)'),
('384503','3845','9','1','100','1','0','15','8000','12000','11','23601','1','0','40','2','0','0','0','0','0','0','Shindrell Swiftfire - Cast Scatter Shot and Set Ranged Weapon Model (Phase 1)'),
('384504','3845','9','1','100','1','0','5','3000','5000','11','32908','1','33','0','0','0','0','0','0','0','0','Shindrell Swiftfire - Cast Wing Clip (Phase 1)'),
('384505','3845','9','1','100','1','30','80','0','0','21','1','1','0','20','1','0','0','0','0','0','0','Shindrell Swiftfire - Start Combat Movement and Start Melee at 30 Yards (Phase 1)'),
('384506','3845','9','1','100','1','0','10','0','0','21','1','0','0','40','1','0','0','20','1','0','0','Shindrell Swiftfire - Start Combat Movement and Set Melee Weapon Model and Start Melee Below 10 Yards (Phase 1)'),
('384507','3845','9','1','100','1','11','25','0','0','21','0','1','0','20','0','0','0','0','0','0','0','Shindrell Swiftfire - Prevent Combat Movement and Prevent Melee at 25 Yards (Phase 1)'),
('384508','3845','7','0','100','0','0','0','0','0','22','1','0','0','40','1','0','0','21','0','0','0','Shindrell Swiftfire - Set Phase to 1 and Set Melee Weapon Model and Prevent Combat Movement on Evade');
UPDATE creature_template SET AIName='EventAI' WHERE entry=3845;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=3825);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('382501','3825','2','0','100','1','30','0','120000','120000','11','8599','0','1','1','-106','0','0','0','0','0','0','Ghostpaw Alpha - Cast Enrage at 30% HP');
UPDATE creature_template SET AIName='EventAI' WHERE entry=3825;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=3815);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('381501','3815','11','0','100','0','0','0','0','0','11','8612','0','1','0','0','0','0','0','0','0','0','Blink Dragon - Cast Phase Shift on Spawn');
UPDATE creature_template SET AIName='EventAI' WHERE entry=3815;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=3672);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('367201','3672','1','0','100','2','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Boahn - Prevent Combat Movement on Spawn'),
('367202','3672','4','0','100','2','0','0','0','0','11','9532','1','0','23','1','0','0','0','0','0','0','Boahn - Cast Lightning Bolt and Set Phase 1 on Aggro'),
('367203','3672','9','13','100','3','0','40','2400','3800','11','9532','1','0','0','0','0','0','0','0','0','0','Boahn - Cast Lightning Bolt (Phase 1)'),
('367204','3672','3','13','100','2','15','0','0','0','21','1','0','0','23','1','0','0','0','0','0','0','Boahn - Start Combat Movement and Set Phase 2 when Mana is at 15% (Phase 1)'),
('367205','3672','9','13','100','2','35','80','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Boahn - Start Combat Movement at 35 Yards (Phase 1)'),
('367206','3672','9','13','100','2','5','15','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Boahn - Prevent Combat Movement at 15 Yards (Phase 1)'),
('367207','3672','9','13','100','2','0','5','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Boahn - Start Combat Movement Below 5 Yards'),
('367208','3672','3','11','100','3','100','30','100','100','23','-1','0','0','0','0','0','0','0','0','0','0','Boahn - Set Phase 1 when Mana is above 30% (Phase 2)'),
('367209','3672','0','0','100','3','10000','20000','20000','35000','11','8041','0','1','0','0','0','0','0','0','0','0','Boahn - Cast Serpent Form'),
('367210','3672','2','0','100','3','40','0','30000','40000','11','5187','0','1','0','0','0','0','0','0','0','0','Boahn - Cast Healing Touch at 40% HP'),
('367211','3672','2','0','100','2','15','0','0','0','22','3','0','0','0','0','0','0','0','0','0','0','Boahn - Set Phase 3 at 15% HP'),
('367212','3672','2','7','100','2','15','0','0','0','21','1','0','0','25','0','0','0','1','-47','0','0','Boahn - Start Combat Movement and Flee at 15% HP (Phase 3)'),
('367213','3672','7','0','100','2','0','0','0','0','22','0','0','0','0','0','0','0','0','0','0','0','Boahn - Set Phase to 0 on Evade');
UPDATE creature_template SET AIName='EventAI' WHERE entry=3672;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=3253);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('325301','3253','0','0','100','1','12000','18000','25000','35000','11','7278','0','0','0','0','0','0','0','0','0','0','Silithid Harvester - Summon Harvester Swarm');
UPDATE creature_template SET AIName='EventAI' WHERE entry=3253;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=3250);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('325001','3250','0','0','100','1','12000','18000','15000','23000','11','6587','0','0','1','-1317','0','0','0','0','0','0','Silithid Creeper - Cast Silithid Creeper Egg and Emote');
UPDATE creature_template SET AIName='EventAI' WHERE entry=3250;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=5781);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('578101','5781','1','0','100','0','2000','2000','0','0','1','-1318','0','0','0','0','0','0','0','0','0','0','Silithid Creeper Egg - Text Emote'),
('578102','5781','1','0','100','0','4000','4000','0','0','1','-1319','0','0','0','0','0','0','0','0','0','0','Silithid Creeper Egg - Text Emote'),
('578103','5781','1','0','100','0','6000','6000','0','0','11','6588','0','0','41','1000','0','0','0','0','0','0','Silithid Creeper Egg - Summon Silithid Grub and Delayed Despawn');
UPDATE creature_template SET AIName='EventAI' WHERE entry=5781;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=5838);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('583801','5838','1','0','100','0','0','0','0','0','21','0','0','0','20','0','0','0','23','1','0','0','Brokespear - Prevent Combat Movement and Prevent Melee and Set Phase 1 on Spawn'),
('583802','5838','9','5','100','1','5','30','2300','3900','11','10277','1','0','40','2','0','0','0','0','0','0','Brokespear - Cast Throw and Set Ranged Weapon Model (Phase 1)'),
('583803','5838','9','5','100','1','30','80','0','0','21','1','1','0','20','1','0','0','0','0','0','0','Brokespear - Start Combat Movement and Start Melee at 30 Yards (Phase 1)'),
('583804','5838','9','5','100','1','0','10','0','0','21','1','0','0','40','1','0','0','20','1','0','0','Brokespear - Start Combat Movement and Set Melee Weapon Model and Start Melee Below 10 Yards (Phase 1)'),
('583805','5838','9','5','100','1','11','25','0','0','21','0','1','0','20','0','0','0','0','0','0','0','Brokespear - Prevent Combat Movement and Prevent Melee at 25 Yards (Phase 1)'),
('583806','5838','0','0','100','1','6000','12000','9000','15000','11','7992','4','32','0','0','0','0','0','0','0','0','Brokespear - Cast Slowing Poison'),
('583807','5838','2','0','100','0','15','0','0','0','23','1','0','0','0','0','0','0','0','0','0','0','Brokespear - Set Phase 2 at 15% HP'),
('583808','5838','2','3','100','0','15','0','0','0','21','1','0','0','25','0','0','0','1','-47','0','0','Brokespear - Start Combat Movement and Flee at 15% HP (Phase 2)'),
('583809','5838','7','0','100','0','0','0','0','0','22','1','0','0','40','1','0','0','0','0','0','0','Brokespear - Set Phase 1 and Set Melee Weapon Model on Evade');
UPDATE creature_template SET AIName='EventAI' WHERE entry=5838;
DELETE FROM `creature_ai_texts` WHERE(`entry`=-1317);
DELETE FROM `creature_ai_texts` WHERE(`entry`=-1318);
DELETE FROM `creature_ai_texts` WHERE(`entry`=-1319);
INSERT INTO `creature_ai_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`,`emote`) VALUES
('-1317','Silithid Creeper lays an egg!','0','2','0','3250','0'),
('-1318','Silithid Creeper Egg begins to crack and open...','0','2','0','5781','0'),
('-1319','Silithid Creeper Egg splits open!','0','2','0','5781','0');
UPDATE `creature_ai_texts` SET `content_loc2` = 'La Plante rampante de Silithid pose un œuf !' WHERE `entry` = -1317;
UPDATE `creature_ai_texts` SET `content_loc2` = 'L\'oeuf de plante grimpante de Silithid commence à fendre et s\'ouvrir…' WHERE `entry` = -1318;
UPDATE `creature_ai_texts` SET `content_loc2` = 'Les fentes d\'oeufs de plante grimpante de Silithid s\'ouvrent !..' WHERE `entry` = -1319;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=14392);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('1439201','14392','0','0','100','1','3000','6000','5000','7000','11','15580','1','0','0','0','0','0','0','0','0','0','Overlord Runthak - Cast Strike'),
('1439202','14392','0','0','100','1','6000','10000','9000','17000','11','16509','4','32','0','0','0','0','0','0','0','0','Overlord Runthak - Cast Rend'),
('1439203','14392','0','0','100','1','12000','16000','16000','21000','11','16508','1','0','0','0','0','0','0','0','0','0','Overlord Runthak - Cast Intimidating Roar');
UPDATE creature_template SET AIName='EventAI' WHERE entry=14392;

