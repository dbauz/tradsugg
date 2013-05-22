DELETE FROM `creature_ai_scripts` WHERE creature_id IN (3236,3238,3239,3240);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Barrens Kodo
('323601','3236','0','0','100','1','7000','16000','9000','17000','11','6266','1','0','0','0','0','0','0','0','0','0','Barrens Kodo - Cast Kodo Stomp'),
-- Stormhide
('323801','3238','0','0','100','1','5000','11000','6000','12000','11','5401','4','0','0','0','0','0','0','0','0','0','Stormhide - Cast Lizard Bolt'),
('323802','3238','9','0','100','1','0','5','9000','15000','11','6730','6','1','0','0','0','0','0','0','0','0','Stormhide - Cast Head Butt'),
-- Thunderhead
('323901','3239','0','0','100','1','4000','9000','6000','12000','11','5401','1','0','0','0','0','0','0','0','0','0','Thunderhead - Cast Lizard Bolt'),
-- Stormsnout
('324001','3240','0','0','100','1','4000','9000','6000','12000','11','5401','1','0','0','0','0','0','0','0','0','0','Stormsnout - Cast Lizard Bolt');
DELETE FROM `creature_ai_scripts` WHERE creature_id IN (3234,3252,3254,3260,3261,3266,3267,3268,3275,3378,3381,3392);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Lost Barrens Kodo
('323401','3234','4','0','100','0','0','0','0','0','11','6268','0','0','0','0','0','0','0','0','0','0','Lost Barrens Kodo - Cast Rushing Charge On Aggro'),
('323402','3234','0','0','100','1','7000','16000','9000','17000','11','6266','1','0','0','0','0','0','0','0','0','0','Lost Barrens Kodo - Cast Kodo Stomp'),
-- Silithid Swarmer
('325201','3252','0','0','100','1','7000','15000','8000','16000','11','6589','0','0','0','0','0','0','0','0','0','0','Silithid Swarmer - Cast Silithid Swarm'),
-- Sunscale Lashtail
('325401','3254','0','0','100','1','11000','21000','13000','19000','11','6607','1','0','0','0','0','0','0','0','0','0','Sunscale Lashtail - Cast Lash'),
-- Bristleback Water Seeker
('326001','3260','0','0','100','1','5000','13000','10000','16000','11','12748','1','0','0','0','0','0','0','0','0','0','Bristleback Water Seeker - Cast Frost Nova'),
-- Bristleback Thornweaver
('326101','3261','1','0','100','1','1000','1000','60000','60000','11','782','0','0','0','0','0','0','0','0','0','0','Bristleback Thornweaver - Cast Thorns OOC'),
('326102','3261','0','0','100','1','5000','11000','12000','18000','11','12747','4','0','0','0','0','0','0','0','0','0','Bristleback Thornweaver - Cast Entangling Roots'),
-- Razormane Defender
('326601','3266','4','0','100','0','0','0','0','0','11','7165','0','0','0','0','0','0','0','0','0','0','Razormane Defender - Cast Battle Stance on Aggro'),
('326602','3266','0','0','100','1','7000','14000','10000','18000','11','13730','1','0','0','0','0','0','0','0','0','0','Razormane Defender - Cast Demoralizing Shout'),
('326603','3266','0','0','100','1','5000','9000','7000','12000','11','25710','1','0','0','0','0','0','0','0','0','0','Razormane Defender - Cast Heroic Strike'),
-- Razormane Water Seeker
('326701','3267','0','0','100','1','7000','13000','30000','40000','11','6278','4','0','0','0','0','0','0','0','0','0','Razormane Water Seeker - Cast Creeping Mold'),
-- Razormane Thornweaver
('326801','3268','4','0','100','0','0','0','0','0','11','467','0','0','0','0','0','0','0','0','0','0','Razormane Thornweaver - Cast Thorns on Aggro'),
('326802','3268','0','0','100','1','7000','12000','15000','21000','11','6950','4','0','0','0','0','0','0','0','0','0','Razormane Thornweaver - Cast Faerie Fire'),
-- Kolkar Marauder
('327501','3275','4','0','100','0','0','0','0','0','11','6268','6','1','0','0','0','0','0','0','0','0','Kolkar Marauder - Cast Charge on Aggro'),
('327502','3275','0','0','100','1','5000','11000','7000','12000','11','11976','1','0','0','0','0','0','0','0','0','0','Kolkar Marauder - Cast Strike'),
('327503','3275','0','0','100','1','7000','15000','9000','14000','11','8014','4','33','0','0','0','0','0','0','0','0','Kolkar Marauder - Cast Tetanus'),
('327504','3275','6','0','3','0','0','0','0','0','1','-769','0','0','32','3395','1','8','0','0','0','0','Kolkar Marauder - Chance Say and Summon Verog the Dervish on Death'),
-- Bael'dun Officer
('337801','3378','11','0','100','0','0','0','0','0','11','8876','0','0','0','0','0','0','0','0','0','0','Bael\'dun Officer - Cast Thrash on Spawn'),
('337802','3378','0','0','100','1','1000','1000','15000','23000','11','6264','0','1','0','0','0','0','0','0','0','0','Bael\'dun Officer - Cast Nimble Reflexes'),
-- Southsea Brigand
('338101','3381','0','0','100','1','7000','14000','10000','16000','11','6253','1','0','0','0','0','0','0','0','0','0','Southsea Brigand - Cast Backhand'),
-- Prospector Khazgorm
('339201','3392','0','0','100','1','7000','14000','10000','16000','11','6253','1','0','0','0','0','0','0','0','0','0','Prospector Khazgorm - Cast Backhand');
DELETE FROM `creature_ai_scripts` WHERE creature_id IN (3282,3445);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Venture Co. Mercenary
('328201','3282','1','0','100','0','0','0','0','0','21','0','0','0','20','0','0','0','23','1','0','0','Venture Co Mercenary - Prevent Combat Movement and Prevent Melee and Set Phase 1 on Spawn'),
('328202','3282','9','1','100','1','5','30','2300','3900','11','6660','1','0','40','2','0','0','0','0','0','0','Venture Co Mercenary - Cast Shoot and Set Ranged Weapon Model (Phase 1)'),
('328203','3282','9','1','100','1','30','80','0','0','21','1','1','0','20','1','0','0','0','0','0','0','Venture Co Mercenary - Start Combat Movement and Start Melee at 30 Yards (Phase 1)'),
('328204','3282','9','1','100','1','0','10','0','0','21','1','0','0','40','1','0','0','20','1','0','0','Venture Co Mercenary - Start Combat Movement and Set Melee Weapon Model and Start Melee Below 10 Yards (Phase 1)'),
('328205','3282','9','1','100','1','11','25','0','0','21','0','1','0','20','0','0','0','0','0','0','0','Venture Co Mercenary - Prevent Combat Movement and Prevent Melee at 25 Yards (Phase 1)'),
('328206','3282','7','0','100','0','0','0','0','0','22','1','0','0','40','1','0','0','21','0','0','0','Venture Co Mercenary - Set Phase to 1 and Set Melee Weapon Model and Prevent Combat Movement on Evade'),
-- Supervisor Lugwizzle
('344501','3445','2','0','100','0','30','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Supervisor Lugwizzle - Flee at 30% HP');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` IN (3282,3445);
DELETE FROM `creature_ai_scripts` WHERE creature_id IN (3282,3445);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Venture Co. Mercenary
('328201','3282','1','0','100','0','0','0','0','0','21','0','0','0','20','0','0','0','23','1','0','0','Venture Co Mercenary - Prevent Combat Movement and Prevent Melee and Set Phase 1 on Spawn'),
('328202','3282','9','1','100','1','5','30','2300','3900','11','6660','1','0','40','2','0','0','0','0','0','0','Venture Co Mercenary - Cast Shoot and Set Ranged Weapon Model (Phase 1)'),
('328203','3282','9','1','100','1','30','80','0','0','21','1','1','0','20','1','0','0','0','0','0','0','Venture Co Mercenary - Start Combat Movement and Start Melee at 30 Yards (Phase 1)'),
('328204','3282','9','1','100','1','0','10','0','0','21','1','0','0','40','1','0','0','20','1','0','0','Venture Co Mercenary - Start Combat Movement and Set Melee Weapon Model and Start Melee Below 10 Yards (Phase 1)'),
('328205','3282','9','1','100','1','11','25','0','0','21','0','1','0','20','0','0','0','0','0','0','0','Venture Co Mercenary - Prevent Combat Movement and Prevent Melee at 25 Yards (Phase 1)'),
('328206','3282','7','0','100','0','0','0','0','0','22','1','0','0','40','1','0','0','21','0','0','0','Venture Co Mercenary - Set Phase to 1 and Set Melee Weapon Model and Prevent Combat Movement on Evade'),
-- Supervisor Lugwizzle
('344501','3445','2','0','100','0','30','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Supervisor Lugwizzle - Flee at 30% HP');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` IN (3282,3445);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`= 22304);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Mo'arg Extractor
('2230401','22304','11','0','100','0','0','0','0','0','11','40453','0','1','0','0','0','0','0','0','0','0','Mo\'arg Extractor - Cast Aura of Fear on Spawn'),
('2230402','22304','0','0','100','1','5000','11000','16000','21000','11','40818','0','0','0','0','0','0','0','0','0','0','Mo\'arg Extractor - Cast Toxic Slime'),
('2230403','22304','0','0','100','1','12000','17000','12000','18000','11','40839','0','0','0','0','0','0','0','0','0','0','Mo\'arg Extractor - Cast Drill');
UPDATE creature_template SET AIName='EventAI' WHERE entry= 22304;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`= 23286);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Black Blood of Draenor
('2328601','23286','0','0','100','1','8000','14000','18000','25000','11','40818','0','0','0','0','0','0','0','0','0','0','Black Blood of Draenor - Cast Toxic Slime'),
('2328602','23286','2','0','100','0','40','0','0','0','11','7279','1','1','25','0','0','0','0','0','0','0','Black Blood of Draenor - Cast Black Sludge and Flee at 40% HP');
UPDATE creature_template SET AIName='EventAI' WHERE entry= 23286;
DELETE FROM `creature_ai_scripts` WHERE creature_id IN (3283,3286,3295,3385,3386,5835);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Venture Co. Enforcer
('328301','3283','9','0','100','1','0','5','12000','17000','11','6713','1','0','0','0','0','0','0','0','0','0','Venture Co Enforcer - Cast Disarm'),
('328302','3283','0','0','100','1','7000','12000','20000','35000','11','9128','0','0','0','0','0','0','0','0','0','0','Venture Co Enforcer - Cast Battle Shout'),
-- Venture Co. Overseer
('328601','3286','2','0','100','1','20','0','5000','10000','11','9080','1','33','0','0','0','0','0','0','0','0','Venture Co Overseer - Cast Overseer\'s Poison at 20% HP'),
-- Sludge Beast
('329501','3295','9','0','100','1','0','5','9000','16000','11','7279','1','32','0','0','0','0','0','0','0','0','Sludge Beast - Cast Black Sludge'),
-- Theramore Marine
('338501','3385','0','0','100','1','1000','3000','180000','180000','11','7164','0','1','0','0','0','0','0','0','0','0','Theramore Marine - Cast Defensive Stance'),
('338502','3385','9','0','100','1','0','5','15000','21000','11','72','1','0','0','0','0','0','0','0','0','0','Theramore Marine - Cast Shield Bash'),
('338503','3385','0','0','100','1','12000','18000','12000','21000','11','6713','4','0','0','0','0','0','0','0','0','0','Theramore Marine - Cast Disarm'),
-- Theramore Preserver
('338601','3386','1','0','100','0','0','0','0','0','21','0','0','0','22','0','0','0','0','0','0','0','Defias Pillager - Prevent Combat Movement and Set Phase to 0 on Spawn'),
('338602','3386','4','0','100','0','0','0','0','0','11','9734','6','0','23','1','0','0','0','0','0','0','Defias Pillager - Cast Holy Smite and Set Phase 1 on Aggro'),
('338603','3386','9','5','100','1','0','40','3400','4800','11','9734','1','0','0','0','0','0','0','0','0','0','Defias Pillager - Cast Holy Smite (Phase 1)'),
('338604','3386','3','5','100','0','7','0','0','0','21','1','0','0','23','1','0','0','0','0','0','0','Defias Pillager - Start Combat Movement and Set Phase 2 when Mana is at 7% (Phase 1)'),
('338605','3386','9','5','100','0','35','80','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Defias Pillager - Start Combat Movement at 35 Yards (Phase 1)'),
('338606','3386','9','5','100','0','5','15','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Defias Pillager - Prevent Combat Movement at 15 Yards (Phase 1)'),
('338607','3386','9','5','100','0','0','5','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Defias Pillager - Start Combat Movement Below 5 Yards (Phase 1)'),
('338608','3386','3','3','100','1','100','15','100','100','23','-1','0','0','0','0','0','0','0','0','0','0','Defias Pillager - Set Phase 1 when Mana is above 15% (Phase 2)'),
('338609','3386','14','0','100','1','150','40','12000','18000','11','11642','6','1','0','0','0','0','0','0','0','0','Kinelory - Cast Heal on Friendlies'),
('338610','3386','14','0','100','1','250','40','15000','21000','11','8362','6','1','0','0','0','0','0','0','0','0','Kinelory - Cast Renew on Friendlies'),
('338611','3386','7','0','100','0','0','0','0','0','22','0','0','0','0','0','0','0','0','0','0','0','Defias Pillager - Set Phase to 0 on Evade'),
-- Foreman Grills
('583501','5835','9','0','100','1','0','5','7000','11000','11','9080','6','0','0','0','0','0','0','0','0','0','Foreman Grills - Cast Hamstring'),
('583502','5835','2','0','100','1','20','0','5000','10000','11','9080','1','33','0','0','0','0','0','0','0','0','Foreman Grills - Cast Overseer\'s Poison at 20% HP');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` IN (3283,3286,3295,3385,3386,5835);
DELETE FROM `creature_ai_scripts` WHERE creature_id IN (3458,3461,3473,5827,5828,5829,5830,5831,5832,5836,5849,5859,5865,6268,7873,9336,9456,9524,12138,12319);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Razormane Seer
('345801','3458','0','0','100','1','5000','11000','16000','24000','11','6363','0','0','0','0','0','0','0','0','0','0','Razormane Seer - Cast Searing Totem'),
('345802','3458','2','0','100','1','50','0','25000','35000','11','6274','0','1','0','0','0','0','0','0','0','0','Razormane Seer - Cast Healing Ward When Below 50% HP'),
-- Oasis Snapjaw
('346101','3461','0','0','100','1','9000','18000','17000','24000','11','6530','1','0','0','0','0','0','0','0','0','0','Oasis Snapjaw - Cast Sling Dirt'),
-- Owatanka
('347301','3473','0','0','100','1','7000','15000','10000','18000','11','6254','1','0','0','0','0','0','0','0','0','0','Owatanka - Cast Chained Bolt'),
-- Brontus
('582701','5827','4','0','100','0','0','0','0','0','11','6268','0','1','0','0','0','0','0','0','0','0','Brontus - Cast Rushing Charge On Aggro'),
('582702','5827','9','0','100','1','0','5','7000','15000','11','6016','1','32','0','0','0','0','0','0','0','0','Brontus - Cast Pierce Armor'),
-- Humar the Pridelord
('582801','5828','9','0','100','1','0','5','6000','14000','11','3247','4','32','0','0','0','0','0','0','0','0','Humar the Pridelord - Cast Agonizing Pain'),
-- Snort the Heckler
('582901','5829','0','0','100','1','3000','5000','7000','11000','11','7951','1','0','0','0','0','0','0','0','0','0','Snort the Heckler - Cast Toxic Spit'),
('582902','5829','9','0','100','1','0','5','15000','21000','11','3604','6','1','0','0','0','0','0','0','0','0','Snort the Heckler - Cast Tendon Rip'),
-- Sister Rathtalon
('583001','5830','0','0','100','1','1000','3000','14000','21000','11','6728','4','0','0','0','0','0','0','0','0','0','Sister Rathtalon - Cast Enveloping Winds'),
('583002','5830','9','0','100','1','0','5','9000','15000','11','6982','0','0','0','0','0','0','0','0','0','0','Sister Rathtalon - Cast Gust of Wind'),
('583003','5830','0','0','100','1','11000','16000','25000','35000','11','6535','4','1','0','0','0','0','0','0','0','0','Sister Rathtalon - Cast Lightning Cloud'),
('583004','5830','2','0','100','0','15','0','0','0','25','0','0','0','1','-47','0','0','0','0','0','0','Sister Rathtalon - Flee at 15% HP'),
-- Swiftmane
('583101','5831','0','0','100','1','3000','7000','7000','15000','11','6016','1','0','0','0','0','0','0','0','0','0','Swiftmane - Cast Pierce Armor'),
-- Thunderstomp
('583201','5832','0','0','100','1','3000','9000','9000','16000','11','6254','1','0','0','0','0','0','0','0','0','0','Thunderstomp - Cast Chained Bolt'),
-- Engineer Whirleygig
('583601','5836','4','0','100','0','0','0','0','0','11','7979','0','0','0','0','0','0','0','0','0','0','Engineer Whirleygig - Cast Compact Harvest Reaper'),
('583602','5836','0','0','100','1','5000','16000','25000','31000','11','8209','0','1','0','0','0','0','0','0','0','0','Engineer Whirleygig - Cast Explosive Sheep'),
-- Digger Flameforge
('584901','5849','1','0','100','0','0','0','0','0','21','0','0','0','20','0','0','0','23','1','0','0','Digger Flameforge - Prevent Combat Movement and Prevent Melee and Set Phase 1 on Spawn'),
('584902','5849','9','5','100','1','5','30','2300','3900','11','7978','1','0','40','2','0','0','0','0','0','0','Digger Flameforge - Cast Throw Dynamite and Set Ranged Weapon Model (Phase 1)'),
('584903','5849','9','5','100','1','30','80','0','0','21','1','1','0','20','1','0','0','0','0','0','0','Digger Flameforge - Start Combat Movement and Start Melee at 30 Yards (Phase 1)'),
('584904','5849','9','5','100','1','0','10','0','0','21','1','0','0','40','1','0','0','20','1','0','0','Digger Flameforge - Start Combat Movement and Set Melee Weapon Model and Start Melee Below 10 Yards (Phase 1)'),
('584905','5849','9','5','100','1','11','25','0','0','21','0','1','0','20','0','0','0','0','0','0','0','Digger Flameforge - Prevent Combat Movement and Prevent Melee at 25 Yards (Phase 1)'),
('584906','5849','9','0','100','1','0','5','9000','14000','11','6253','6','1','0','0','0','0','0','0','0','0','Digger Flameforge - Cast Backhand'),
('584907','5849','2','0','100','0','15','0','0','0','23','1','0','0','0','0','0','0','0','0','0','0','Digger Flameforge - Set Phase 2 at 15% HP'),
('584908','5849','2','3','100','0','15','0','0','0','21','1','0','0','25','0','0','0','1','-47','0','0','Digger Flameforge - Start Combat Movement and Flee at 15% HP (Phase 2)'),
('584909','5849','7','0','100','0','0','0','0','0','22','1','0','0','40','1','0','0','21','0','0','0','Digger Flameforge - Set Phase to 1 and Set Melee Weapon Model and Prevent Combat Movement on Evade'),
-- Hagg Taurenbane
('585901','5859','11','0','100','0','0','0','0','0','11','7165','0','1','0','0','0','0','0','0','0','0','Hagg Taurenbane - Cast Battle Stance on Spawn'),
('585902','5859','9','0','100','1','0','5','9000','15000','11','9080','1','0','0','0','0','0','0','0','0','0','Hagg Taurenbane - Cast Hamstring'),
('585903','5859','0','0','100','1','6000','9000','5000','9000','11','40505','1','0','0','0','0','0','0','0','0','0','Hagg Taurenbane - Cast Cleave'),
('585904','5859','0','0','100','1','8000','14000','12000','19000','11','13730','0','0','0','0','0','0','0','0','0','0','Hagg Taurenbane - Cast Demoralizing Shout'),
-- Dishu
('586501','5865','4','0','100','0','0','0','0','0','11','8210','0','1','0','0','0','0','0','0','0','0','Dishu - Cast Savannah Cubs on Aggro'),
-- Summoned Felhunter
('626801','6268','0','0','100','1','5000','11000','11000','17000','11','2691','1','0','0','0','0','0','0','0','0','0','Summoned Felhunter - Cast Mana Burn'),
-- Razorfen Battleguard
('787301','7873','0','0','100','1','7000','12000','9000','15000','11','11430','1','0','0','0','0','0','0','0','0','0','Razorfen Battleguard - Cast Slam'),
-- Boss Copperplug
('933601','9336','1','0','100','0','0','0','0','0','21','0','0','0','20','0','0','0','23','1','0','0','Boss Copperplug - Prevent Combat Movement and Prevent Melee and Set Phase 1 on Spawn'),
('933602','9336','9','5','100','1','5','30','2300','3900','11','9143','1','0','40','2','0','0','0','0','0','0','Boss Copperplug - Cast Bomb and Set Ranged Weapon Model (Phase 1)'),
('933603','9336','9','5','100','1','30','80','0','0','21','1','1','0','20','1','0','0','0','0','0','0','Boss Copperplug - Start Combat Movement and Start Melee at 30 Yards (Phase 1)'),
('933604','9336','9','5','100','1','0','10','0','0','21','1','0','0','40','1','0','0','20','1','0','0','Boss Copperplug - Start Combat Movement and Set Melee Weapon Model and Start Melee Below 10 Yards (Phase 1)'),
('933605','9336','9','5','100','1','11','25','0','0','21','0','1','0','20','0','0','0','0','0','0','0','Boss Copperplug - Prevent Combat Movement and Prevent Melee at 25 Yards (Phase 1)'),
('933606','9336','0','0','100','1','5000','9000','9000','16000','11','6533','1','0','0','0','0','0','0','0','0','0','Boss Copperplug - Cast Net'),
('933607','9336','2','0','100','0','15','0','0','0','23','1','0','0','0','0','0','0','0','0','0','0','Boss Copperplug - Set Phase 2 at 15% HP'),
('933608','9336','2','3','100','0','15','0','0','0','21','1','0','0','25','0','0','0','1','-47','0','0','Boss Copperplug - Start Combat Movement and Flee at 15% HP (Phase 2)'),
('933609','9336','7','0','100','0','0','0','0','0','22','1','0','0','40','1','0','0','21','0','0','0','Boss Copperplug - Set Phase to 1 and Set Melee Weapon Model and Prevent Combat Movement on Evade'),
-- Warlord Krom'zar
('945601','9456','9','0','100','1','0','5','5000','8000','11','11976','1','0','0','0','0','0','0','0','0','0','Warlord Krom\'zar - Cast Strike'),
('945602','9456','6','0','100','0','0','0','0','0','11','13965','0','7','0','0','0','0','0','0','0','0','Warlord Krom\'zar - Cast Create Krom\'zar\'s Banner on Death'),
-- Kolkar Invader
('952401','9524','4','0','100','0','0','0','0','0','11','6268','0','0','0','0','0','0','0','0','0','0','Kolkar Invader - Cast Rushing Charge On Aggro'),
('952402','9524','0','0','100','1','5000','8000','6000','10000','11','11976','1','0','0','0','0','0','0','0','0','0','Kolkar Invader - Cast Strike'),
('952403','9524','9','0','100','1','0','5','8000','15000','11','8014','4','32','0','0','0','0','0','0','0','0','Kolkar Invader - Cast Tetanus'),
-- Lunaclaw
('1213801','12138','11','0','100','0','0','0','0','0','11','12787','0','1','0','0','0','0','0','0','0','0','Lunaclaw - Cast Thrash on Spawn'),
('1213802','12138','6','0','100','0','0','0','0','0','11','18986','0','7','0','0','0','0','0','0','0','0','Lunaclaw - Cast Lunaclaw Spirit on Death'),
-- Burning Blade Toxicologist
('1231901','12319','4','0','100','0','0','0','0','0','11','696','0','0','0','0','0','0','0','0','0','0','Burning Blade Toxicologist - Cast Demon Skin on Aggro'),
('1231902','12319','0','0','100','1','5000','11000','14000','25000','11','11962','1','0','0','0','0','0','0','0','0','0','Burning Blade Toxicologist - Cast Immolate'),
('1231903','12319','0','0','100','1','9000','15000','18000','30000','11','980','4','33','0','0','0','0','0','0','0','0','Burning Blade Toxicologist - Cast Bane of Agony'),
('1231904','12319','2','0','100','1','50','0','13000','18000','11','689','1','0','0','0','0','0','0','0','0','0','Burning Blade Toxicologist - Cast Drain Life at 50% HP');
