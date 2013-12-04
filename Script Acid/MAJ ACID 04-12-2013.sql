DELETE FROM creature_ai_scripts WHERE creature_id IN (11980,22331,22336);
INSERT INTO creature_ai_scripts VALUES 
('1198001','11980','11','0','100','0','0','0','0','0','11','24240','0','1','0','0','0','0','0','0','0','0','Zuluhed the Whacked - Spawn Effect on Spawn'),
('1198002','11980','4','0','100','0','0','0','0','0','1','-698','0','0','0','0','0','0','0','0','0','0','Zuluhed the Whacked - Yell on Aggro'),
('1198003','11980','0','0','100','1','12000','16000','13000','25000','11','19717','4','0','0','0','0','0','0','0','0','0','Zuluhed the Whacked - Cast Rain of Fire'),
('1198004','11980','0','0','100','1','60000','60000','60000','60000','11','38876','0','1','0','0','0','0','0','0','0','0','Zuluhed the Whacked - Cast Demon Portal'),
('1198005','11980','2','0','100','0','20','0','0','0','11','38853','0','0','1','-699','0','0','0','0','0','0','Zuluhed the Whacked - Cast Nether Infusion at 20% HP'),
('2233101','22331','11','0','100','0','0','0','0','0','11','32121','0','1','0','0','0','0','0','0','0','0','Dragonmaw Elite - Cast Choose Target (50 yd) on Spawn'),
('2233102','22331','1','0','100','0','0','0','0','0','21','0','0','0','20','0','0','0','23','1','0','0','Dragonmaw Elite - Prevent Combat Movement and Prevent Melee and Set Phase 1 on Spawn'),
('2233103','22331','9','5','100','1','5','80','2300','3900','11','38858','1','0','40','2','0','0','0','0','0','0','Dragonmaw Elite - Cast Shoot and Set Ranged Weapon Model (Phase 1)'),
('2233104','22331','9','5','100','1','45','80','0','0','21','1','1','0','20','1','0','0','0','0','0','0','Dragonmaw Elite - Start Combat Movement and Start Melee at 45 Yards (Phase 1)'),
('2233105','22331','9','5','100','1','0','10','0','0','21','1','0','0','40','1','0','0','20','1','0','0','Dragonmaw Elite - Start Combat Movement and Set Melee Weapon Model and Start Melee Below 10 Yards (Phase 1)'),
('2233106','22331','9','5','100','1','11','35','0','0','21','0','1','0','20','0','0','0','0','0','0','0','Dragonmaw Elite - Prevent Combat Movement and Prevent Melee at 25 Yards (Phase 1)'),
('2233107','22331','0','0','100','1','6000','9000','12000','16000','11','38861','4','1','40','2','0','0','0','0','0','0','Dragonmaw Elite - Cast Aimed Shot'),
('2233108','22331','0','0','100','1','4000','6000','12000','16000','11','38859','4','32','0','0','0','0','0','0','0','0','Dragonmaw Elite - Cast Serpent Sting'),
('2233109','22331','2','0','100','0','15','0','0','0','23','1','0','0','0','0','0','0','0','0','0','0','Dragonmaw Elite - Set Phase 2 at 15% HP'),
('2233110','22331','2','3','100','0','15','0','0','0','21','1','0','0','25','0','0','0','1','-47','0','0','Dragonmaw Elite - Start Combat Movement and Flee at 15% HP (Phase 2)'),
('2233111','22331','7','0','100','0','0','0','0','0','22','1','0','0','40','1','0','0','0','0','0','0','Dragonmaw Elite - Set Phase 1 and Set Melee Weapon Model on Evade'),
('2233601','22336','1','0','100','0','27000','29000','0','0','12','22338','0','5000','0','0','0','0','0','0','0','0','Demon Portal (Zuluhed) - Summon Arcubus OOC');
UPDATE creature_template SET AIName='EventAI' WHERE entry IN (11980,22331,22336);
DELETE FROM creature_ai_texts where entry IN (-698,-699,-173);
INSERT INTO `creature_ai_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`,`emote`) VALUES
('-698','ATTACK WITH THE FULL FORCE OF NETHERWING, MY CHILDREN! ATTACK!','0','1','0','11980','0'),
('-699','Lord Illidan, bless me with the power of the flight!','0','1','0','11980','0'),
('-173','The Brotherhood shall prevail!','5784','1','0','639','0');
