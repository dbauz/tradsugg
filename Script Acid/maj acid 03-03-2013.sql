INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Forged Iron Trogg
('2797901','27979','0','0','100','3','3000','6000','8000','13000','11','50900','4','0','0','0','0','0','0','0','0','0','Forged Iron Trogg (Normal) - Cast Lightning Shock'),
('2797902','27979','0','0','100','5','3000','6000','8000','13000','11','59852','4','0','0','0','0','0','0','0','0','0','Forged Iron Trogg (Heroic) - Cast Lightning Shock'),
-- Forged Iron Dwarf
('2798201','27982','0','0','100','3','4000','7000','9000','15000','11','50895','4','0','0','0','0','0','0','0','0','0','Forged Iron Dwarf (Normal) - Cast Lightning Tether'),
('2798202','27982','0','0','100','5','4000','7000','9000','15000','11','59851','4','0','0','0','0','0','0','0','0','0','Forged Iron Dwarf (Heroic) - Cast Lightning Tether'),
-- Dark Rune Protector
('2798301','27983','4','0','100','6','0','0','0','0','11','22120','4','0','0','0','0','0','0','0','0','0','Dark Rune Protector - Cast Charge on Aggro'),
('2798302','27983','0','0','100','7','12000','16000','12000','16000','11','22120','4','0','0','0','0','0','0','0','0','0','Dark Rune Protector - Cast Charge'),
('2798303','27983','0','0','100','7','6000','12000','8000','16000','11','42724','1','0','0','0','0','0','0','0','0','0','Dark Rune Protector - Cast Cleave'),
-- Dark Rune Stormcaller
('2798401','27984','0','0','100','3','2000','4000','3000','6000','11','12167','4','0','0','0','0','0','0','0','0','0','Dark Rune Stormcaller (Normal) - Cast Lightning Bolt'),
('2798402','27984','0','0','100','5','2000','4000','3000','6000','11','59863','4','0','0','0','0','0','0','0','0','0','Dark Rune Stormcaller (Heroic) - Cast Lightning Bolt'),
('2798403','27984','0','0','100','3','3000','7000','13000','20000','11','15654','4','0','0','0','0','0','0','0','0','0','Dark Rune Stormcaller (Normal) - Cast Shadow Word: Pain'),
('2798404','27984','0','0','100','5','3000','7000','13000','20000','11','59864','4','0','0','0','0','0','0','0','0','0','Dark Rune Stormcaller (Heroic) - Cast Shadow Word: Pain'),
('2798405','27984','9','0','100','7','0','15','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Dark Rune Stormcaller - Prevent Combat Movement on Range Check'),
('2798406','27984','9','0','100','7','20','35','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Dark Rune Stormcaller - Start Combat Movement on Range Check'),
-- Iron Golem Custodian
('2798501','27985','0','0','100','7','8000','14000','13000','22000','11','33661','1','0','0','0','0','0','0','0','0','0','Iron Golem Custodian - Cast Crush Armor'),
('2798502','27985','0','0','100','3','4000','7000','8000','13000','11','12734','0','0','0','0','0','0','0','0','0','0','Iron Golem Custodian (Normal) - Cast Ground Smash'),
('2798503','27985','0','0','100','5','4000','7000','8000','13000','11','59865','0','0','0','0','0','0','0','0','0','0','Iron Golem Custodian (Heroic) - Cast Ground Smash'),
-- Iron Sludge
('2816501','28165','11','0','100','6','0','0','0','0','11','50777','0','0','0','0','0','0','0','0','0','0','Iron Sludge - Cast Iron Sludge Spawn Visual on Spawned'),
('2816502','28165','0','0','100','3','4000','6000','9000','14000','11','50838','0','0','0','0','0','0','0','0','0','0','Iron Sludge (Normal) - Cast Toxic Volley'),
('2816503','28165','0','0','100','5','4000','6000','9000','14000','11','59853','0','0','0','0','0','0','0','0','0','0','Iron Sludge (Heroic) - Cast Toxic Volley');
UPDATE creature_template SET AIName='EventAI' WHERE entry IN (27979, 27982, 27983, 27984, 27985, 28165);
