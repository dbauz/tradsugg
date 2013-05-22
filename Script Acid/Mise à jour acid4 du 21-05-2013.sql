DELETE FROM `creature_ai_scripts` WHERE creature_id IN (29174,29176,29177,29181,29182);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Defender of the Light
('2917401','29174','4','0','100','2','0','0','0','0','11','53625','1','5','0','0','0','0','0','0','0','0','Defender of the Light - Cast Heroic Leap on Aggro'),
('2917402','29174','0','0','100','3','10000','20000','10000','20000','11','53625','5','0','0','0','0','0','0','0','0','0','Defender of the Light - Cast Heroic Leap'),
('2917403','29174','0','0','100','3','10000','20000','10000','20000','11','53643','1','0','0','0','0','0','0','0','0','0','Defender of the Light - Cast Holy Strike'),
('2917404','29174','0','0','100','3','10000','20000','10000','20000','11','53638','1','0','0','0','0','0','0','0','0','0','Defender of the Light - Cast Holy Wrath'),
('2917405','29174','0','0','100','3','10000','20000','10000','20000','11','53629','1','0','0','0','0','0','0','0','0','0','Defender of the Light - Cast Uppercut'),
('2917406','29174','14','0','100','3','10000','20','5000','10000','11','29427','6','1','0','0','0','0','0','0','0','0','Defender of the Light - Cast Holy Light on Friendlies'),
-- Korfax
('2917601','29176','9','0','100','3','8','40','9000','16000','11','53625','6','1','0','0','0','0','0','0','0','0','Korfax - Cast Heroic Leap'),
('2917602','29176','9','0','100','3','0','5','5000','7000','11','53631','1','0','0','0','0','0','0','0','0','0','Korfax - Cast Cleave'),
-- Commander Eligor Dawnbringer
('2917701','29177','14','0','100','3','5000','40','3000','5000','11','37979','6','1','0','0','0','0','0','0','0','0','Commander Eligor Dawnbringer - Cast Holy Light on Friendlies'),
-- Rayne
('2918101','29181','0','0','100','3','5000','9000','10000','15000','11','20678','4','0','0','0','0','0','0','0','0','0','Rayne - Cast Starfall'),
('2918102','29181','0','0','100','3','2000','4000','5000','7000','11','21807','1','0','0','0','0','0','0','0','0','0','Rayne - Cast Wrath'),
('2918103','29181','14','0','100','3','5000','40','6000','8000','11','20664','6','1','0','0','0','0','0','0','0','0','Rayne - Cast Rejuvenation on Friendlies'),   
('2918104','29181','0','0','100','3','10000','14000','5000','10000','11','25817','0','1','0','0','0','0','0','0','0','0','Rayne - Cast Tranquility on Friendlies'),
-- Rimblat Earthshatter
('2918201','29182','0','0','100','3','5000','8000','5000','9000','11','53630','0','0','0','0','0','0','0','0','0','0','Rimblat Earthshatter - Cast Thunder'),
('2918202','29182','14','0','100','3','5000','40','5000','8000','11','33642','6','1','0','0','0','0','0','0','0','0','Rimblat Earthshatter - Cast Chain Heal on Friendlies');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` IN (29174,29176,29177,29181,29182);
DELETE FROM `creature_ai_scripts` WHERE creature_id IN (19291,19292);
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (19291,19292);
DELETE FROM `creature_ai_scripts` WHERE creature_id IN (19995, 19998, 20334, 20723, 20726, 20730, 20731, 20732, 21296);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Bladespire Brute
('1999501','19995','11','0','100','0','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Bladespire Brute - Set Phase 1 on Spawned'),
('1999502','19995','30','4','100','1','5','21241','0','0','22','2','0','0','0','0','0','0','0','0','0','0','Bladespire Brute (Phase 1) - Set Phase 2 on Received AI Event'),
('1999503','19995','1','2','100','0','25000','25000','0','0','24','0','0','0','0','0','0','0','0','0','0','0','Bladespire Brute (Phase 2) - Evade on OOC Timer'),
('1999504','19995','0','0','100','1','1000','3000','4000','7000','11','15496','1','0','0','0','0','0','0','0','0','0','Bladespire Brute - Cast Cleave'),
('1999505','19995','7','0','100','0','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Bladespire Brute - Set Phase 1 on Evade'),
-- Bladespire Shaman
('1999801','19998','1','0','100','0','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Bladespire Shaman - Prevent Combat Movement on Spawn'),
('1999802','19998','4','0','100','0','0','0','0','0','11','12550','0','0','23','1','0','0','0','0','0','0','Bladespire Shaman - Cast Lightning Shield and Set Phase 1 on Aggro'),
('1999803','19998','9','5','100','1','0','40','3500','6400','11','26098','1','0','0','0','0','0','0','0','0','0','Bladespire Shaman - Cast Lightning Bolt (Phase 1)'),
('1999804','19998','3','5','100','0','15','0','0','0','21','1','0','0','23','1','0','0','0','0','0','0','Bladespire Shaman - Start Combat Movement and Set Phase 2 when Mana is at 15%'),
('1999805','19998','9','5','100','0','35','80','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Bladespire Shaman - Start Combat Movement Beyond 35 Yards'),
('1999806','19998','9','5','100','0','0','5','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Bladespire Shaman - Start Combat Movement Below 5 Yards'),
('1999807','19998','9','5','100','1','5','15','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Bladespire Shaman - Prevent Combat Movement at 15 Yards'),
('1999808','19998','3','3','100','1','100','30','100','100','23','-1','0','0','0','0','0','0','0','0','0','0','Bladespire Shaman - Set Phase 1 when Mana is above 30% (Phase 2)'),
('1999809','19998','9','0','100','1','0','40','15000','20000','11','32062','0','0','0','0','0','0','0','0','0','0','Bladespire Shaman - Cast Fire Nova Totem'),
('1999810','19998','30','0','100','1','5','21241','0','0','22','3','0','0','0','0','0','0','0','0','0','0','Bladespire Shaman - Set Phase 3 on Received AI Event'),
('1999811','19998','1','7','100','0','25000','25000','0','0','24','0','0','0','0','0','0','0','0','0','0','0','Bladespire Shaman (Phase 3) - Evade on OOC Timer'),
('1999812','19998','7','0','100','0','0','0','0','0','22','0','0','0','0','0','0','0','0','0','0','0','Bladespire Shaman - Set Phase to 0 on Evade'),
-- Bladespire Cook
('2033401','20334','11','0','100','0','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Bladespire Cook - Set Phase 1 on Spawned'),
('2033402','20334','30','4','100','1','5','21241','0','0','22','2','0','0','0','0','0','0','0','0','0','0','Bladespire Cook (Phase 1) - Set Phase 2 on Received AI Event'),
('2033403','20334','1','2','100','0','25000','25000','0','0','24','0','0','0','0','0','0','0','0','0','0','0','Bladespire Cook (Phase 2) - Evade on OOC Timer'),
('2033404','20334','0','0','100','1','5000','8000','7000','13000','11','37597','1','0','0','0','0','0','0','0','0','0','Bladespire Cook - Cast Meat Slap'),
('2033405','20334','0','0','100','1','1000','3000','10000','20000','11','37596','1','0','0','0','0','0','0','0','0','0','Bladespire Cook - Cast Tenderize'),
('2033406','20334','7','0','100','0','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Bladespire Cook - Set Phase 1 on Evade'),
-- Korgaah
('2072301','20723','11','0','100','0','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Korgaah - Set Phase 1 on Spawned'),
('2072302','20723','30','4','100','1','5','21241','0','0','22','2','0','0','0','0','0','0','0','0','0','0','Korgaah (Phase 1) - Set Phase 2 on Received AI Event'),
('2072303','20723','1','2','100','0','25000','25000','0','0','24','0','0','0','0','0','0','0','0','0','0','0','Korgaah (Phase 2) - Evade on OOC Timer'),
('2072304','20723','0','0','100','1','5000','8000','7000','13000','11','34802','1','0','0','0','0','0','0','0','0','0','Korgaah - Cast Kick'),
('2072305','20723','0','0','100','1','6000','12000','15000','25000','11','23600','1','0','0','0','0','0','0','0','0','0','Korgaah - Cast Piercing Howl'),
('2072306','20723','2','0','100','0','20','0','0','0','11','8599','0','0','0','0','0','0','0','0','0','0','Korgaah - Cast Enrage at 20% HP'),
('2072307','20723','7','0','100','0','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Korgaah - Set Phase 1 on Evade'),
-- Mugdorg
('2072601','20726','1','0','100','0','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Mugdorg - Prevent Combat Movement on Spawn'),
('2072602','20726','4','0','100','0','0','0','0','0','11','12550','0','0','23','1','0','0','0','0','0','0','Mugdorg - Cast Lightning Shield and Set Phase 1 on Aggro'),
('2072603','20726','9','5','100','1','0','40','3500','6400','11','12058','1','0','0','0','0','0','0','0','0','0','Mugdorg - Cast Chain Lightning (Phase 1)'),
('2072604','20726','3','5','100','0','15','0','0','0','21','1','0','0','23','1','0','0','0','0','0','0','Mugdorg - Start Combat Movement and Set Phase 2 when Mana is at 15%'),
('2072605','20726','9','5','100','0','35','80','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Mugdorg - Start Combat Movement Beyond 35 Yards'),
('2072606','20726','9','5','100','0','0','5','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Mugdorg - Start Combat Movement Below 5 Yards'),
('2072607','20726','9','5','100','1','5','15','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Mugdorg - Prevent Combat Movement at 15 Yards'),
('2072608','20726','3','3','100','1','100','30','100','100','23','-1','0','0','0','0','0','0','0','0','0','0','Mugdorg - Set Phase 1 when Mana is above 30% (Phase 2)'),
('2072609','20726','2','0','100','0','40','0','0','0','11','11986','0','0','0','0','0','0','0','0','0','0','Mugdorg - Cast Healing Wave at 40% HP'),
('2072610','20726','30','0','100','1','5','21241','0','0','22','3','0','0','0','0','0','0','0','0','0','0','Mugdorg - Set Phase 3 on Received AI Event'),
('2072611','20726','1','7','100','0','25000','25000','0','0','24','0','0','0','0','0','0','0','0','0','0','0','Mugdorg (Phase 3) - Evade on OOC Timer'),
('2072612','20726','7','0','100','0','0','0','0','0','22','0','0','0','0','0','0','0','0','0','0','0','Mugdorg - Set Phase to 0 on Evade'),
-- Glumdor
('2073001','20730','11','0','100','0','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Glumdor - Set Phase 1 on Spawned'),
('2073002','20730','4','0','100','0','0','0','0','0','11','13730','0','0','0','0','0','0','0','0','0','0','Glumdor - Cast Demoralizing Shout on Aggro'),
('2073003','20730','30','4','100','1','5','21241','0','0','22','2','0','0','0','0','0','0','0','0','0','0','Glumdor (Phase 1) - Set Phase 2 on Received AI Event'),
('2073004','20730','1','2','100','0','25000','25000','0','0','24','0','0','0','0','0','0','0','0','0','0','0','Glumdor (Phase 2) - Evade on OOC Timer'),
('2073005','20730','0','0','100','1','5000','8000','12000','18000','11','36208','1','0','0','0','0','0','0','0','0','0','Glumdor - Cast Steal Weapon'),
('2073006','20730','0','0','100','1','6000','9000','10000','13000','11','32009','1','0','0','0','0','0','0','0','0','0','Glumdor - Cast Cutdown'),
('2073007','20730','0','0','100','1','35000','40000','35000','40000','11','13730','0','0','0','0','0','0','0','0','0','0','Glumdor - Cast Demoralizing Shout'),
('2073008','20730','2','0','100','0','20','0','0','0','11','8599','0','0','0','0','0','0','0','0','0','0','Glumdor - Cast Enrage at 20% HP'),
('2073009','20730','7','0','100','0','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Glumdor - Set Phase 1 on Evade'),
-- Droggam
('2073101','20731','1','0','100','0','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Droggam - Prevent Combat Movement on Spawn'),
('2073102','20731','4','0','100','0','0','0','0','0','11','12544','0','0','23','1','0','0','0','0','0','0','Droggam - Cast Frost Armor and Set Phase 1 on Aggro'),
('2073103','20731','9','5','100','1','0','40','3500','6400','11','9053','1','0','0','0','0','0','0','0','0','0','Droggam - Cast Fireball (Phase 1)'),
('2073104','20731','3','5','100','0','15','0','0','0','21','1','0','0','23','1','0','0','0','0','0','0','Droggam - Start Combat Movement and Set Phase 2 when Mana is at 15%'),
('2073105','20731','9','5','100','0','35','80','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Droggam - Start Combat Movement Beyond 35 Yards'),
('2073106','20731','9','5','100','0','0','5','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Droggam - Start Combat Movement Below 5 Yards'),
('2073107','20731','9','5','100','1','5','15','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Droggam - Prevent Combat Movement at 15 Yards'),
('2073108','20731','3','3','100','1','100','30','100','100','23','-1','0','0','0','0','0','0','0','0','0','0','Droggam - Set Phase 1 when Mana is above 30% (Phase 2)'),
('2073109','20731','9','5','100','1','0','8','11000','16000','11','11831','0','0','0','0','0','0','0','0','0','0','Droggam - Cast Frost Nova (Phase 1'),
('2073110','20731','30','0','100','1','5','21241','0','0','22','3','0','0','0','0','0','0','0','0','0','0','Droggam - Set Phase 3 on Received AI Event'),
('2073111','20731','1','7','100','0','25000','25000','0','0','24','0','0','0','0','0','0','0','0','0','0','0','Droggam (Phase 3) - Evade on OOC Timer'),
('2073112','20731','7','0','100','0','0','0','0','0','22','0','0','0','0','0','0','0','0','0','0','0','Droggam - Set Phase to 0 on Evade'),
-- Gorr'Dim
('2073201','20732','1','0','100','0','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Gorr\'Dim - Prevent Combat Movement on Spawn'),
('2073202','20732','4','0','100','0','0','0','0','0','11','35917','0','0','23','1','0','0','0','0','0','0','Gorr\'Dim - Cast Fiery Intellect and Set Phase 1 on Aggro'),
('2073203','20732','9','5','100','1','0','40','3500','6400','11','9672','1','0','0','0','0','0','0','0','0','0','Gorr\'Dim - Cast Frostbolt (Phase 1)'),
('2073204','20732','3','5','100','0','15','0','0','0','21','1','0','0','23','1','0','0','0','0','0','0','Gorr\'Dim - Start Combat Movement and Set Phase 2 when Mana is at 15%'),
('2073205','20732','9','5','100','0','35','80','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Gorr\'Dim - Start Combat Movement Beyond 35 Yards'),
('2073206','20732','9','5','100','0','0','5','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Gorr\'Dim - Start Combat Movement Below 5 Yards'),
('2073207','20732','9','5','100','1','5','15','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Gorr\'Dim - Prevent Combat Movement at 15 Yards'),
('2073208','20732','3','3','100','1','100','30','100','100','23','-1','0','0','0','0','0','0','0','0','0','0','Gorr\'Dim - Set Phase 1 when Mana is above 30% (Phase 2)'),
('2073209','20732','9','5','100','1','0','8','11000','16000','11','15091','0','0','0','0','0','0','0','0','0','0','Gorr\'Dim - Cast Blast Wave (Phase 1'),
('2073210','20732','30','0','100','1','5','21241','0','0','22','3','0','0','0','0','0','0','0','0','0','0','Gorr\'Dim - Set Phase 3 on Received AI Event'),
('2073211','20732','1','7','100','0','25000','25000','0','0','24','0','0','0','0','0','0','0','0','0','0','0','Gorr\'Dim (Phase 3) - Evade on OOC Timer'),
('2073212','20732','7','0','100','0','0','0','0','0','22','0','0','0','0','0','0','0','0','0','0','0','Gorr\'Dim - Set Phase to 0 on Evade'),
-- Bladespire Champion
('2129601','21296','11','0','100','0','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Bladespire Champion - Set Phase 1 on Spawned'),
('2129602','21296','4','0','100','0','0','0','0','0','11','37777','1','0','0','0','0','0','0','0','0','0','Bladespire Champion - Cast Mighty Charge on Aggro'),
('2129603','21296','30','4','100','1','5','21241','0','0','22','2','0','0','0','0','0','0','0','0','0','0','Bladespire Champion (Phase 1) - Set Phase 2 on Received AI Event'),
('2129604','21296','1','2','100','0','25000','25000','0','0','24','0','0','0','0','0','0','0','0','0','0','0','Bladespire Champion (Phase 2) - Evade on OOC Timer'),
('2129605','21296','0','0','100','1','5000','8000','12000','18000','11','8078','0','0','0','0','0','0','0','0','0','0','Bladespire Champion - Cast Thunderclap'),
('2129606','21296','7','0','100','0','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Bladespire Champion - Set Phase 1 on Evade');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` IN (19995, 19998, 20334, 20723, 20726, 20730, 20731, 20732, 21296);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`= 16534);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Inoculated Nestlewood Owlkin
('1653401','16534','1','0','100','32','1000','1000','0','0','1','-906','-907','-908','1','-909','-910','-906','1','-907','-908','-909','Inoculated Nestlewood Owlkin - Random Text Emote');
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`= 3513);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Miss Danna  
('351301','3513','10','0','100','0','0','15','0','0','12','68','1','600000','0','0','0','0','0','0','0','0','Miss Danna - Summon Stormwind City Guard on Hostile LOS'),
('351302','3513','2','0','100','1','2','1','1000','1000','42','1','-1','0','0','0','0','0','0','0','0','0','Miss Danna - Set Invincible');     
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`= 3518);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Thomas Miller 
('351801','3518','10','0','100','0','0','15','0','0','12','68','1','600000','0','0','0','0','0','0','0','0','Thomas Miller - Summon Stormwind City Guard on Hostile LOS'),
('351802','3518','1','0','100','1','0','0','120000','180000','1','-204','-205','-142','0','0','0','0','0','0','0','0','Thomas Miller - Random Say OOC');
DELETE FROM `creature_ai_texts` WHERE(`entry`=-142);
INSERT INTO `creature_ai_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`,`emote`) VALUES
('-142','Get it while it\'s hot!','0','0','0','3518','0');
UPDATE `creature_ai_texts` SET `content_loc2` = 'Obtenez-le tandis qu\'il fait chaud!' WHERE `entry` = -142;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`= 3520);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Ol' Emma 
('352001','3520','10','0','100','0','0','15','0','0','12','68','1','600000','0','0','0','0','0','0','0','0','Ol\' Emma - Summon Stormwind City Guard on Hostile LOS');
DELETE FROM `creature_ai_texts` WHERE(`entry`=-423);
DELETE FROM `creature_ai_texts` WHERE(`entry`=-424);
DELETE FROM `creature_ai_texts` WHERE(`entry`=-425);
DELETE FROM `creature_ai_texts` WHERE(`entry`=-426);
DELETE FROM `creature_ai_texts` WHERE(`entry`=-427);
DELETE FROM `creature_ai_texts` WHERE(`entry`=-428);
DELETE FROM `creature_ai_scripts` WHERE creature_id IN (1395,1402,1405);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Ol' Beasley 
('139501','1395','10','0','100','0','0','15','0','0','12','68','1','600000','0','0','0','0','0','0','0','0','Ol\' Beasley - Summon Stormwind City Guard on Hostile LOS'),
('139502','1395','1','0','100','33','0','0','120000','180000','1','-411','-412','-413','1','-206','-207','-208','1','-411','-413','-208','Ol\' Beasley - Random Say OOC'),
-- Topper McNabb 
('140201','1402','10','0','100','0','0','15','0','0','12','68','1','600000','0','0','0','0','0','0','0','0','Topper McNabb - Summon Stormwind City Guard on Hostile LOS'),
('140202','1402','1','0','100','33','0','0','120000','180000','1','-206','-207','-208','1','-411','-412','-413','1','-206','-208','-412','Topper McNabb - Random Say OOC'),
-- Morris Lawry
('140501','1405','10','0','100','0','0','15','0','0','12','68','1','600000','0','0','0','0','0','0','0','0','Morris Lawry - Summon Stormwind City Guard on Hostile LOS'),
('140502','1405','1','0','100','33','0','0','120000','180000','1','-206','-207','-208','1','-411','-412','-413','1','-208','-411','-413','Morris Lawry - Random Say OOC');
DELETE FROM `creature_ai_scripts` WHERE creature_id IN (21771);
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (21771);
DELETE FROM `creature_ai_texts` WHERE(`entry`=-317);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`= 30706);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Jo'mah
('3070601','30706','1','0','100','0','0','0','0','0','21','0','0','0','22','0','0','0','0','0','0','0','Jo\'mah - Prevent Combat Movement and Set Phase to 0 on Spawn'),
('3070602','30706','4','0','100','0','0','0','0','0','11','20792','6','0','23','1','0','0','0','0','0','0','Jo\'mah - Cast Frostbolt and Set Phase 1 on Aggro'),
('3070603','30706','9','5','100','1','0','40','3400','4800','11','20792','1','0','0','0','0','0','0','0','0','0','Jo\'mah - Cast Frostbolt (Phase 1)'),
('3070604','30706','3','5','100','0','7','0','0','0','21','1','0','0','23','1','0','0','0','0','0','0','Jo\'mah - Start Combat Movement and Set Phase 2 when Mana is at 7% (Phase 1)'),
('3070605','30706','9','5','100','0','35','80','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Jo\'mah - Start Combat Movement at 35 Yards (Phase 1)'),
('3070606','30706','9','5','100','0','5','15','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Jo\'mah - Prevent Combat Movement at 15 Yards (Phase 1)'),
('3070607','30706','9','5','100','0','0','5','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Jo\'mah - Start Combat Movement Below 5 Yards (Phase 1)'),
('3070608','30706','3','3','100','1','100','15','100','100','23','-1','0','0','0','0','0','0','0','0','0','0','Jo\'mah - Set Phase 1 when Mana is above 15% (Phase 2)'),
('3070609','30706','7','0','100','0','0','0','0','0','22','0','0','0','0','0','0','0','0','0','0','0','Jo\'mah - Set Phase to 0 on Evade');
UPDATE creature_template SET AIName='EventAI' WHERE entry=30706;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`= 30723);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Xantili
('3072301','30723','1','0','100','0','0','0','0','0','21','0','0','0','22','0','0','0','0','0','0','0','Xantili - Prevent Combat Movement and Set Phase to 0 on Spawn'),
('3072302','30723','4','0','100','0','0','0','0','0','11','20792','6','0','23','1','0','0','0','0','0','0','Xantili - Cast Frostbolt and Set Phase 1 on Aggro'),
('3072303','30723','9','5','100','1','0','40','3400','4800','11','20792','1','0','0','0','0','0','0','0','0','0','Xantili - Cast Frostbolt (Phase 1)'),
('3072304','30723','3','5','100','0','7','0','0','0','21','1','0','0','23','1','0','0','0','0','0','0','Xantili - Start Combat Movement and Set Phase 2 when Mana is at 7% (Phase 1)'),
('3072305','30723','9','5','100','0','35','80','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Xantili - Start Combat Movement at 35 Yards (Phase 1)'),
('3072306','30723','9','5','100','0','5','15','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Xantili - Prevent Combat Movement at 15 Yards (Phase 1)'),
('3072307','30723','9','5','100','0','0','5','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Xantili - Start Combat Movement Below 5 Yards (Phase 1)'),
('3072308','30723','3','3','100','1','100','15','100','100','23','-1','0','0','0','0','0','0','0','0','0','0','Xantili - Set Phase 1 when Mana is above 15% (Phase 2)'),
('3072309','30723','7','0','100','0','0','0','0','0','22','0','0','0','0','0','0','0','0','0','0','0','Xantili - Set Phase to 0 on Evade');    
UPDATE creature_template SET AIName='EventAI' WHERE entry=30723;
