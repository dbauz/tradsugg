INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Ymirjar Warrior
('2669001','26690','0','0','100','7','4000','7000','11000','14000','11','48639','1','0','0','0','0','0','0','0','0','0','Ymirjar Warrior - Cast Hamstring'),
('2669002','26690','0','0','100','7','5000','8000','7000','12000','11','48640','1','0','0','0','0','0','0','0','0','0','Ymirjar Warrior - Cast Strike'),
-- Ymirjar Witch Doctor
('2669101','26691','11','0','100','6','0','0','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Ymirjar Witch Doctor - Prevent Combat Movement on Spawn'),
('2669102','26691','4','0','100','2','0','0','0','0','11','49084','1','0','23','1','0','0','0','0','0','0','Ymirjar Witch Doctor (Normal) - Cast Shadow Bolt and Set Phase 1 on Aggro'),
('2669103','26691','4','0','100','4','0','0','0','0','11','59246','1','0','23','1','0','0','0','0','0','0','Ymirjar Witch Doctor (Heroic) - Cast Shadow Bolt and Set Phase 1 on Aggro'),
('2669104','26691','9','5','100','3','0','40','3000','5000','11','49084','1','0','0','0','0','0','0','0','0','0','Ymirjar Witch Doctor (Normal) - Cast Shadow Bolt (Phase 1)'),
('2669105','26691','9','5','100','5','0','40','3000','5000','11','59246','1','0','0','0','0','0','0','0','0','0','Ymirjar Witch Doctor (Heroic) - Cast Shadow Bolt (Phase 1)'),
('2669106','26691','3','5','100','6','7','0','0','0','21','1','0','0','23','1','0','0','0','0','0','0','Ymirjar Witch Doctor - Start Combat Movement and Set Phase 2 when Mana is at 7% (Phase 1)'),
('2669107','26691','9','5','100','6','35','80','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Ymirjar Witch Doctor - Start Combat Movement at 35 Yards (Phase 1)'),
('2669108','26691','9','5','100','6','5','15','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Ymirjar Witch Doctor - Prevent Combat Movement at 15 Yards (Phase 1)'),
('2669109','26691','9','5','100','6','0','5','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Ymirjar Witch Doctor - Start Combat Movement Below 5 Yards'),
('2669110','26691','3','3','100','7','100','15','100','100','23','-1','0','0','0','0','0','0','0','0','0','0','Ymirjar Witch Doctor - Set Phase 1 when Mana is above 15% (Phase 2)'),
('2669111','26691','0','0','100','3','3000','5000','25000','35000','11','49089','1','1','0','0','0','0','0','0','0','0','Ymirjar Witch Doctor (Normal) - Cast Shrink'),
('2669112','26691','0','0','100','5','3000','5000','25000','35000','11','59247','1','1','0','0','0','0','0','0','0','0','Ymirjar Witch Doctor (Heroic) - Cast Shrink'),
-- Ymirjar Harpooner
('2669201','26692','11','0','100','6','0','0','0','0','21','0','0','0','20','0','0','0','0','0','0','0','Ymirjar Harpooner - Prevent Combat Movement and Prevent Melee on Spawn'),
('2669202','26692','9','0','100','7','5','30','1500','2000','11','49091','1','0','40','2','0','0','0','0','0','0','Ymirjar Harpooner - Cast Throw and Set Ranged Weapon Model'),
('2669203','26692','9','0','100','7','5','30','6000','7000','11','49092','1','0','0','0','0','0','0','0','0','0','Ymirjar Harpooner - Cast Net'),
('2669204','26692','9','0','100','7','30','80','0','0','21','1','1','0','20','1','0','0','0','0','0','0','Ymirjar Harpooner - Start Combat Movement and Start Melee at 30 Yards'),
('2669205','26692','9','0','100','7','0','10','0','0','21','1','0','0','40','1','0','0','20','1','0','0','Ymirjar Harpooner - Start Combat Movement and Set Melee Weapon Model and Start Melee at 10 Yards'),
('2669206','26692','9','0','100','7','11','25','0','0','21','0','1','0','20','0','0','0','0','0','0','0','Ymirjar Harpooner - Prevent Combat Movement and Prevent Melee at 25 Yards'),
('2669207','26692','6','0','100','6','0','0','0','0','11','56789','0','2','0','0','0','0','0','0','0','0','Ymirjar Harpooner - Cast Summon Harpoon on Death');
UPDATE creature_template SET AIName='EventAI' WHERE entry IN (26690,26691,26692);