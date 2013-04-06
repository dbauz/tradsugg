DELETE FROM creature_ai_scripts WHERE creature_id=4857;
DELETE FROM creature_ai_scripts WHERE creature_id=7076;
DELETE FROM creature_ai_scripts WHERE creature_id=7077;
DELETE FROM creature_ai_scripts WHERE creature_id=7309;
DELETE FROM creature_ai_scripts WHERE creature_id=10120;
INSERT INTO creature_ai_scripts VALUES
('485701','4857','11','0','100','2','0','0','0','0','11','10255','0','0','0','0','0','0','0','0','0','0','Stone Keeper - Cast Stoned on Spawned'),
('485702','4857','0','0','100','3','4300','10900','13300','22900','11','5568','0','0','0','0','0','0','0','0','0','0','Stone Keeper - Cast Trample'),
('485703','4857','21','0','100','2','0','0','0','0','11','10255','0','0','0','0','0','0','0','0','0','0','Stone Keeper - Cast Stoned on Reached Home'),
('485704','4857','6','0','100','2','0','0','0','0','11','9874','0','7','0','0','0','0','0','0','0','0','Stone Keeper - Cast Self Destruct on Death'),
-- Earthen Guardian
('707601','7076','11','0','100','2','0','0','0','0','11','10255','0','0','0','0','0','0','0','0','0','0','Earthen Guardian - Cast Stoned on Spawned'),
('707602','7076','0','0','100','3','5000','9000','7000','14000','11','17207','0','0','0','0','0','0','0','0','0','0','Earthen Guardian - Cast Whirlwind'),
('707603','7076','21','0','100','2','0','0','0','0','11','10255','0','0','0','0','0','0','0','0','0','0','Earthen Guardian - Cast Stoned on Reached Home'),
('707604','7076','6','0','100','2','0','0','0','0','11','10666','0','2','0','0','0','0','0','0','0','0','Earthen Guardian - Cast Earthen Guards Destroyed on Death'),
-- Earthen Hallshaper
('707701','7077','11','0','100','2','0','0','0','0','11','10255','0','0','0','0','0','0','0','0','0','0','Earthen Hallshaper - Cast Stoned on Spawned'),
('707702','7077','21','0','100','2','0','0','0','0','11','10255','0','0','0','0','0','0','0','0','0','0','Earthen Hallshaper - Cast Stoned on Reached Home'),
('707703','7077','6','0','100','2','0','0','0','0','11','10666','0','2','0','0','0','0','0','0','0','0','Earthen Hallshaper - Cast Earthen Guards Destroyed on Death'),
-- Earthen Custodian
('730901','7309','11','0','100','2','0','0','0','0','11','10255','0','0','0','0','0','0','0','0','0','0','Earthen Custodian - Cast Stoned on Spawned'),
('730902','7309','21','0','100','2','0','0','0','0','11','10255','0','0','0','0','0','0','0','0','0','0','Earthen Custodian - Cast Stoned on Reached Home'),
('730903','7309','6','0','100','2','0','0','0','0','11','10666','0','2','0','0','0','0','0','0','0','0','Earthen Custodian - Cast Earthen Guards Destroyed on Death'),
-- Vault Warder
('1012001','10120','11','0','100','2','0','0','0','0','11','10255','0','0','0','0','0','0','0','0','0','0','Vault Warder - Cast Stoned on Spawned'),
('1012002','10120','0','0','100','3','4000','10000','13000','22000','11','5568','0','0','0','0','0','0','0','0','0','0','Vault Warder - Cast Trample'),
('1012003','10120','21','0','100','2','0','0','0','0','11','10255','0','0','0','0','0','0','0','0','0','0','Vault Warder - Cast Stoned on Reached Home'),
('1012004','10120','6','0','100','2','0','0','0','0','11','10666','0','2','0','0','0','0','0','0','0','0','Vault Warder - Cast Earthen Guards Destroyed on Death');
UPDATE creature_template SET AIName='EventAI' WHERE entry IN (4857,7076, 7077,7309,10120);