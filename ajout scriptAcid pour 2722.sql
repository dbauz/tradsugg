-- Creature id: 26822
UPDATE creature_template SET AIName='EventAI' WHERE entry=26822;
DELETE FROM creature_ai_scripts WHERE creature_id=26822;
INSERT INTO creature_ai_scripts VALUES 
('2682201','26822','11','0','100','2','0','0','0','0','11','50278','0','0','21','0','0','0','0','0','0','0','Ursula Direbrew - Cast Barreled Control Aura and set Combat Movement False on Spawned'),
('2682202','26822','0','0','100','3','5000','8000','7000','10000','11','50276','4','0','0','0','0','0','0','0','0','0','Ursula Direbrew - Cast Chuck Mug'),
('2682203','26822','9','0','100','3','25','60','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Ursula Direbrew - Start Combat Movement at 25 Yards'),
('2682204','26822','9','0','100','3','5','15','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Ursula Direbrew - Prevent Combat Movement at 15 Yards');

-- Creature id: 26764
UPDATE creature_template SET AIName='EventAI' WHERE entry=26764;
DELETE FROM creature_ai_scripts WHERE creature_id=26764;
INSERT INTO creature_ai_scripts VALUES
('2676401','26764','11','0','100','2','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Ilsa Direbrew - Set Combat Movement False on Spawned'),
('2676402','26764','0','0','100','3','5000','8000','7000','10000','11','50276','4','0','0','0','0','0','0','0','0','0','Ilsa Direbrew - Cast Chuck Mug'),
('2676403','26764','0','0','100','3','3000','5000','20000','25000','11','47333','4','0','0','0','0','0','0','0','0','0','Ilsa Direbrew - Cast Send First Mug'),
('2676404','26764','9','0','100','3','25','60','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Ilsa Direbrew - Start Combat Movement at 25 Yards'),
('2676405','26764','9','0','100','3','5','15','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Ilsa Direbrew - Prevent Combat Movement at 15 Yards');