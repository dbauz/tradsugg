Delete from `creature_ai_scripts` where `id`IN (2299203,2299204,2299303,2299304,2299305,2299403,2299404);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
('2299203','22992','1','0','100','0','1000','1000','0','0','1','-238','0','0','0','0','0','0','0','0','0','0','Guardian of the Hawk - Say 1 OOC'),
('2299204','22992','1','0','100','0','7500','7500','0','0','1','-239','0','0','0','0','0','0','0','0','0','0','Guardian of the Hawk - Say 2 OOC'), 
('2299303','22993','1','0','100','0','1000','1000','0','0','1','-240','0','0','0','0','0','0','0','0','0','0','Guardian of the Eagle - Say 1 OOC'),
('2299304','22993','1','0','100','0','7500','7500','0','0','1','-241','0','0','0','0','0','0','0','0','0','0','Guardian of the Eagle - Say 2 OOC'),
('2299305','22993','1','0','100','0','12000','12000','0','0','21','1','0','0','20','1','0','0','19','2','0','0','Guardian of the Eagle - Set Attackable OOC'), 
('2299403','22994','1','0','100','0','1000','1000','0','0','1','-242','0','0','0','0','0','0','0','0','0','0','Guardian of the Falcon - Say 1 OOC'),
('2299404','22994','1','0','100','0','7500','7500','0','0','1','-243','0','0','0','0','0','0','0','0','0','0','Guardian of the Falcon - Say 2 OOC');
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-242,-243);
INSERT into `creature_ai_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`,`emote`) VALUES
('-242','The falcon is vaniquished, doomed never to rise again! Your quest is futile!','0','0','0','22994','0'),
('-243','The raven will return to us as foretold in the prophecy and you are powerless to stop it!','0','0','0','22994','0');
UPDATE `creature_ai_texts` SET `content_loc2`='Le faucon est très fatigué, condamné pour ne jamais monter de nouveau! Votre recherche est futile!' WHERE (`entry`='-242');
UPDATE `creature_ai_texts` SET `content_loc2`='Le corbeau nous reviendra comme prédit dans la prophétie et que vous êtes impuissants à arrêter!' WHERE (`entry`='-243');