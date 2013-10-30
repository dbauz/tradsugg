DELETE FROM creature_ai_scripts WHERE creature_id=33836;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Bomb Bot
('3383601','33836','11','0','100','6','0','0','0','0','11','63767','0','0','0','0','0','0','0','0','0','0','Bomb Bot - Cast Bomb Bot on Spawned');
DELETE FROM creature_ai_scripts WHERE creature_id=34068;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Magnetic Core
('3406801','34068','11','0','100','6','0','0','0','0','11','64436','0','0','41','25000','0','0','0','0','0','0','Magnetic Core - Cast Magnetic Core and Set Despawn Timer on Spawned');
UPDATE creature_template SET AIName='EventAI' WHERE entry IN(33836,34068,34147,34192,34224,34288,34184);
DELETE FROM creature_ai_scripts WHERE creature_id=34147;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('3414701','34147','0','0','100','7','5000','8000','7000','10000','11','64619','0','0','0','0','0','0','0','0','0','0', 'Emergency Fire Bot - Cast Water Spray'),
('3414702','34147','4','0','100','4','0','0','0','0','11','64616','0','0','0','0','0','0','0','0','0','0','Emergency Fire Bot (Heroic) - Cast Deafening Siren on Aggro');
DELETE FROM creature_ai_scripts WHERE creature_id=34184;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('3418401','34184','0','0','100','7','10000','15000','60000','60000','11','64966','0','0','0','0','0','0','0','0','0','0','Clockwork Mechanic - Cast Ice Turret');
DELETE FROM creature_ai_scripts WHERE creature_id=34192;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('3419201','34192','11','0','100','6','0','0','0','0','11','63767','0','0','0','0','0','0','0','0','0','0','Boomer XP-500 - Cast Bomb Bot on Spawned');
DELETE FROM creature_ai_scripts WHERE creature_id=34224;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('3422401','34224','11','0','100','6','0','0','0','0','21','0','0','0','20','0','0','0','0','0','0','0','Ice Turret - Prevent Combat Movement and Auto Attack on Spawned'),
('3422402','34224','11','0','100','2','0','0','0','0','11','66347','0','0','0','0','0','0','0','0','0','0','Ice Turret (Normal) - Cast Ice Nova on Spawned'),
('3422403','34224','11','0','100','4','0','0','0','0','11','64920','0','0','0','0','0','0','0','0','0','0','Ice Turret (Heroic) - Cast Ice Nova on Spawned');
DELETE FROM creature_ai_scripts WHERE creature_id =34288;
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('3428801','34288','11','0','100','6','0','0','0','0','11','65087','0','2','20','0','0','0','21','0','0','0','Salvagebot Sawblade - Cast Salvage Saws Visual and Set Auto Attack and Combat Movement to False on Spawn'),
('3428802','34288','11','0','100','6','0','0','0','0','11','61906','0','2','0','0','0','0','0','0','0','0','Salvagebot Sawblade - Cast Random Aggro Periodic (5 sec) on Spawned'),
('3428803','34288','11','0','100','2','0','0','0','0','11','65090','0','2','0','0','0','0','0','0','0','0','Salvagebot Sawblade (Normal) - Cast Sawblades on Spawned'),
('3428804','34288','11','0','100','4','0','0','0','0','11','65103','0','2','0','0','0','0','0','0','0','0','Salvagebot Sawblade (Heroic) - Cast Sawblades on Spawned');
DELETE FROM creature_ai_scripts WHERE creature_id=34149;
UPDATE creature_template SET AIName='' WHERE entry =34149;


