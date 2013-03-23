INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Anub'ar Champion
('2892401','28924','0','0','100','3','6000','9000','17000','32000','11','53317','4','32','0','0','0','0','0','0','0','0','Anub\'ar Champion (Normal)- Cast Rend'),
('2892402','28924','0','0','100','5','4000','7000','15000','18000','11','59343','4','32','0','0','0','0','0','0','0','0','Anub\'ar Champion (Heroic)- Cast Rend'),
('2892403','28924','13','0','100','3','14000','17000','0','0','11','53394','6','1','0','0','0','0','0','0','0','0','Anub\'ar Champion (Normal)- Cast Pummel on Target Spell Cast'),
('2892404','28924','13','0','100','5','9000','12000','0','0','11','59344','6','1','0','0','0','0','0','0','0','0','Anub\'ar Champion (Heroic)- Cast Pummel on Target Spell Cast'),
-- Anub'ar Necromancer
('2892501','28925','1','0','100','6','0','0','0','0','21','0','0','0','22','0','0','0','0','0','0','0','Anub\'ar Necromancer - Prevent Combat Movement and Set Phase to 0 on Spawn'),
('2892502','28925','4','0','100','6','0','0','0','0','11','53333','1','0','23','1','0','0','0','0','0','0','Anub\'ar Necromancer - Cast Shadow Bolt and Set Phase 1 on Aggro'),
('2892503','28925','9','5','100','7','0','40','4000','6000','11','53333','1','0','0','0','0','0','0','0','0','0','Anub\'ar Necromancer - Cast Shadow Bolt (Phase 1)'),
('2892504','28925','3','5','100','6','7','0','0','0','21','1','0','0','23','1','0','0','0','0','0','0','Anub\'ar Necromancer - Start Combat Movement and Set Phase 2 when Mana is at 7% (Phase 1)'),
('2892505','28925','9','5','100','6','35','80','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Anub\'ar Necromancer - Start Combat Movement at 35 Yards (Phase 1)'),
('2892506','28925','9','5','100','6','5','15','0','0','21','0','0','0','0','0','0','0','0','0','0','0','Anub\'ar Necromancer - Prevent Combat Movement at 15 Yards (Phase 1)'),
('2892507','28925','9','5','100','6','0','5','0','0','21','1','0','0','0','0','0','0','0','0','0','0','Anub\'ar Necromancer - Start Combat Movement Below 5 Yards (Phase 1)'),
('2892508','28925','3','3','100','7','100','15','100','100','23','-1','0','0','0','0','0','0','0','0','0','0','Anub\'ar Necromancer - Set Phase 1 when Mana is above 15% (Phase 2)'),
('2892509','28925','0','0','100','7','14000','17000','23000','27000','11','53334','0','1','0','0','0','0','0','0','0','0','Anub\'ar Necromancer - Animated Bones'),
('2892510','28925','7','0','100','6','0','0','0','0','22','0','0','0','0','0','0','0','0','0','0','0','Anub\'ar Necromancer - Set Phase to 0 on Evade'),
-- Anub'ar Crypt Fiend
('2905101','29051','0','0','100','3','4000','7000','9000','12000','11','53330','4','32','0','0','0','0','0','0','0','0','Anub\'ar Crypt Fiend (Normal)- Cast Infected Wounds'),
('2905102','29051','0','0','100','5','4000','7000','9000','12000','11','59348','4','32','0','0','0','0','0','0','0','0','Anub\'ar Crypt Fiend (Heroic)- Cast Infected Wounds'),
('2905103','29051','0','0','100','3','9000','12000','13000','17000','11','53322','4','1','0','0','0','0','0','0','0','0','Anub\'ar Crypt Fiend (Normal)- Cast Crushing Webs'),
('2905104','29051','0','0','100','5','9000','12000','10000','13000','11','59347','4','1','0','0','0','0','0','0','0','0','Anub\'ar Crypt Fiend (Heroic)- Cast Crushing Webs');
UPDATE creature_template SET AIName='EventAI' WHERE entry IN (28924,28925,29051);