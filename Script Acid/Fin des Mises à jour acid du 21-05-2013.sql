DELETE FROM `creature_ai_scripts` WHERE creature_id IN (21876,21877);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Chain of Shadows
('2187601','21876','1','0','75','1','5000','5000','15000','20000','11','37784','0','0','0','0','0','0','0','0','0','0','Chain of Shadows - Cast Enforced Submission OOC'),
-- Karsius
('2187701','21877','11','0','100','0','0','0','0','0','11','37789','0','1','1','-1320','0','0','0','0','0','0','Karsius - Cast Teron Freed and Say on Spawn'),
('2187702','21877','6','0','100','0','0','0','0','0','1','-1321','0','0','32','21867','0','25','0','0','0','0','Karsius - Yell on Death and Summon Teron Gorefiend');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` IN (21876,21877);
DELETE FROM `creature_ai_texts` WHERE(`entry`=-1320);
DELETE FROM `creature_ai_texts` WHERE(`entry`=-1321);
INSERT INTO `creature_ai_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`,`emote`) VALUES
('-1320','Your pathetic attempt to escape will be short lived, Gorefiend. Let the boy go and submit! Even with your armour and weapons, you cannot defeat the ancients!','0','0','0','21877','0'),
('-1321','What ... have you done...','0','1','0','21877','0');
UPDATE `creature_ai_texts` SET `content_loc2` = 'Votre tentative pathétique de vous échapper sera de courte durée, Gorefiend. Laisser le garçon aller et proposez ! Même avec vos armes et armures, vous ne pouvez pas vaincre les anciens !' WHERE `entry` = -1320;
UPDATE `creature_ai_texts` SET `content_loc2` = 'Qu\'est-ce ... vous avez fait ...' WHERE `entry` = -1321;
DELETE FROM `creature_ai_scripts` WHERE creature_id IN (21788,21795);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Shadowmoon Zealot
('2178801','21788','4','0','25','32','0','0','0','0','1','-1322','-1323','-1324','1','-1325','-1326','-1322','0','0','0','0','Shadowmoon Zealot - Random Say on Aggro'),
-- Shadowmoon Harbinger
('2179501','21795','4','0','25','32','0','0','0','0','1','-1322','-1323','-1324','1','-1325','-1326','-1322','0','0','0','0','Shadowmoon Harbinger - Random Say on Aggro');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` IN (21788,21795);
DELETE FROM `creature_ai_texts` WHERE(`entry`=-1322);
DELETE FROM `creature_ai_texts` WHERE(`entry`=-1323);
DELETE FROM `creature_ai_texts` WHERE(`entry`=-1324);
DELETE FROM `creature_ai_texts` WHERE(`entry`=-1325);
DELETE FROM `creature_ai_texts` WHERE(`entry`=-1326);
INSERT INTO `creature_ai_texts` (`entry`,`content_default`,`sound`,`type`,`language`,`comment`,`emote`) VALUES
('-1322','Pray that the chilling embrace of Teron Gorefiend does not reach out for you...','0','4','0','21788 21795','0'),
('-1323','It is you who have invaded our home. Gorefiend will avenge us!','0','4','0','21788 21795','0'),
('-1324','We will never dissipate, mortal... Our fate is tied to Gorefiend...','0','4','0','21788 21795','0'),
('-1325','We are bound here... eternally. It is the will of Gorefiend.','0','4','0','21788 21795','0'),
('-1326','Gorefiend will have your head, interloper!','0','4','0','21788 21795','0');
UPDATE `creature_ai_texts` SET `content_loc2` = 'Priez pour que l\étreinte refroidissante de Teron Gorefiend ne vous atteigne pas...' WHERE `entry` = -1322;
UPDATE `creature_ai_texts` SET `content_loc2` = 'C\'est vous qui avez envahi notre maison. Gorefiend nous vengera !' WHERE `entry` = -1323;
UPDATE `creature_ai_texts` SET `content_loc2` = 'Nous ne dissiperons jamais,  mortel... Notre destin est attaché à Gorefiend...' WHERE `entry` = -1324;
UPDATE `creature_ai_texts` SET `content_loc2` = 'Nous sommes attachés ici... éternellement. C\'est le désir de Gorefiend.' WHERE `entry` = -1325;
UPDATE `creature_ai_texts` SET `content_loc2` = 'Gorefiend aura votre tête, intrus !' WHERE `entry` = -1326;
INSERT INTO `creature_ai_summons` (`id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`comment` ) VALUES
('25','-4542.21','1023.72','9.669','0.86','32000','21867');
DELETE FROM `creature_ai_scripts` WHERE creature_id IN (21380,16844,16857,16968,18678,28083,29390,30148,30340,34920);
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
-- Greater Crust Burster
('2138001','21380','11','0','100','0','0','0','0','0','11','29147','0','16','11','33928','0','0','21','0','0','0','Greater Crust Burster - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Prevent Combat Movement on Spawn'),
('2138002','21380','1','0','100','1','1000','1000','1000','1000','11','29147','0','48','0','0','0','0','0','0','0','0','Greater Crust Burster - Cast Sandworm Submerge Visual OOC'),
('2138003','21380','4','0','100','0','0','0','0','0','28','0','29147','0','28','0','33928','0','23','1','0','0','Greater Crust Burster - Remove Sandworm Submerge Visual and Remove Tunnel Bore Passive and Set Phase 1 on Aggro'),
('2138004','21380','9','5','100','1','0','50','2100','4500','11','31747','1','0','0','0','0','0','0','0','0','0','Greater Crust Burster - Cast Poison (Phase 1)'),
('2138005','21380','9','5','100','1','50','100','500','500','11','29147','0','16','11','33928','0','0','21','1','0','0','Greater Crust Burster - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Set Phase 2 at 50 Yards (Phase 1)'),
('2138006','21380','9','5','100','1','50','100','500','500','23','1','0','0','0','0','0','0','0','0','0','0','Greater Crust Burster - Enable Combat Movement at 50 Yards (Phase 1)'),
('2138007','21380','9','3','100','1','0','8','500','500','28','0','29147','0','28','0','33928','0','21','0','0','0','Greater Crust Burster - Remove Sandworm Submerge Visual and Remove Tunnel Bore Passive and Prevent Combat Movement at 8 Yards (Phase 2)'),
('2138008','21380','9','3','100','1','0','8','500','500','23','-1','0','0','0','0','0','0','0','0','0','0','Greater Crust Burster - Set Phase 1 at 8 Yards (Phase 2)'),
('2138009','21380','7','0','100','0','0','0','0','0','11','29147','0','21','11','33928','0','0','21','0','0','0','Greater Crust Burster - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Prevent Combat Movement on Evade'),
('2138010','21380','7','0','100','0','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Greater Crust Burster - Set Phase 1 on Evade'),
-- Crust Burster
('1684401','16844','11','0','100','0','0','0','0','0','11','29147','0','16','11','33928','0','0','21','0','0','0','Crust Burster - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Prevent Combat Movement on Spawn'),
('1684402','16844','1','0','100','1','1000','1000','1000','1000','11','29147','0','48','0','0','0','0','0','0','0','0','Crust Burster - Cast Sandworm Submerge Visual OOC'),
('1684403','16844','4','0','100','0','0','0','0','0','28','0','29147','0','28','0','33928','0','23','1','0','0','Crust Burster - Remove Sandworm Submerge Visual and Remove Tunnel Bore Passive and Set Phase 1 on Aggro'),
('1684404','16844','9','5','100','1','0','50','2100','4500','11','31747','1','0','0','0','0','0','0','0','0','0','Crust Burster - Cast Poison (Phase 1)'),
('1684405','16844','9','5','100','1','0','5','45000','50000','11','32738','1','1','0','0','0','0','0','0','0','0','Crust Burster - Cast Bore (Phase 1)'),
('1684406','16844','9','5','100','1','50','100','500','500','11','29147','0','16','11','33928','0','0','21','1','0','0','Crust Burster - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Set Phase 2  at 50 Yards (Phase 1)'),
('1684407','16844','9','5','100','1','50','100','500','500','23','1','0','0','0','0','0','0','0','0','0','0','Crust Burster - Enable Combat Movement at 50 Yards (Phase 1)'),
('1684408','16844','9','3','100','1','0','8','500','500','28','0','29147','0','28','0','33928','0','21','0','0','0','Crust Burster - Remove Sandworm Submerge Visual and Remove Tunnel Bore Passive and Prevent Combat Movement at 8 Yards (Phase 2)'),
('1684409','16844','9','3','100','1','0','8','500','500','23','-1','0','0','0','0','0','0','0','0','0','0','Crust Burster - Set Phase 1 at 8 Yards (Phase 2)'),
('1684410','16844','7','0','100','0','0','0','0','0','11','29147','0','21','11','33928','0','0','21','0','0','0','Crust Burster - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Prevent Combat Movement on Evade'),
('1684411','16844','7','0','100','0','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Crust Burster - Set Phase 1 on Evade'),
-- Marauding Crust Burster
('1685701','16857','11','0','100','0','0','0','0','0','11','29147','0','16','11','33928','0','0','21','0','0','0','Marauding Crust Burster - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Prevent Combat Movement on Spawn'),
('1685702','16857','1','0','100','1','1000','1000','1000','1000','11','29147','0','48','0','0','0','0','0','0','0','0','Marauding Crust Burster - Cast Sandworm Submerge Visual OOC'),
('1685703','16857','4','0','100','0','0','0','0','0','28','0','29147','0','28','0','33928','0','23','1','0','0','Marauding Crust Burster - Remove Sandworm Submerge Visual and Remove Tunnel Bore Passive and Set Phase 1 on Aggro'),
('1685704','16857','9','5','100','1','0','50','2100','4500','11','31747','1','0','0','0','0','0','0','0','0','0','Marauding Crust Burster - Cast Poison (Phase 1)'),
('1685705','16857','9','5','100','1','50','100','500','500','11','29147','0','16','11','33928','0','0','21','1','0','0','Marauding Crust Burster - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Set Phase 2  at 50 Yards (Phase 1)'),
('1685706','16857','9','5','100','1','50','100','500','500','23','1','0','0','0','0','0','0','0','0','0','0','Marauding Crust Burster - Enable Combat Movement at 50 Yards (Phase 1)'),
('1685707','16857','9','3','100','1','0','8','500','500','28','0','29147','0','28','0','33928','0','21','0','0','0','Marauding Crust Burster - Remove Sandworm Submerge Visual and Remove Tunnel Bore Passive and Prevent Combat Movement at 8 Yards (Phase 2)'),
('1685708','16857','9','3','100','1','0','8','500','500','23','-1','0','0','0','0','0','0','0','0','0','0','Marauding Crust Burster - Set Phase 1 at 8 Yards (Phase 2)'),
('1685709','16857','7','0','100','0','0','0','0','0','11','29147','0','21','11','33928','0','0','21','0','0','0','Marauding Crust Burster - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Prevent Combat Movement on Evade'),
('1685710','16857','7','0','100','0','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Marauding Crust Burster - Set Phase 1 on Evade'),
-- Tunneler
('1696801','16968','11','0','100','0','0','0','0','0','11','29147','0','16','11','33928','0','0','21','0','0','0','Tunneler - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Prevent Combat Movement on Spawn'),
('1696802','16968','1','0','100','1','1000','1000','1000','1000','11','29147','0','48','0','0','0','0','0','0','0','0','Tunneler - Cast Sandworm Submerge Visual OOC'),
('1696803','16968','4','0','100','0','0','0','0','0','28','0','29147','0','28','0','33928','0','23','1','0','0','Tunneler - Remove Sandworm Submerge Visual and Remove Tunnel Bore Passive and Set Phase 1 on Aggro'),
('1696804','16968','9','5','100','1','0','50','2100','4500','11','31747','1','0','0','0','0','0','0','0','0','0','Tunneler - Cast Poison (Phase 1)'),
('1696805','16968','0','5','100','1','20400','20400','45000','50000','11','32738','1','0','0','0','0','0','0','0','0','0','Tunneler - Cast Bore (Phase 1)'),
('1696806','16968','9','5','100','1','50','100','500','500','11','29147','0','16','11','33928','0','0','21','1','0','0','Tunneler - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Set Phase 2  at 50 Yards (Phase 1)'),
('1696807','16968','9','5','100','1','50','100','500','500','23','1','0','0','0','0','0','0','0','0','0','0','Tunneler - Enable Combat Movement at 50 Yards (Phase 1)'),
('1696808','16968','9','3','100','1','0','8','500','500','28','0','29147','0','28','0','33928','0','21','0','0','0','Tunneler - Remove Sandworm Submerge Visual and Remove Tunnel Bore Passive and Prevent Combat Movement at 8 Yards (Phase 2)'),
('1696809','16968','9','3','100','1','0','8','500','500','23','-1','0','0','0','0','0','0','0','0','0','0','Tunneler - Set Phase 1 at 8 Yards (Phase 2)'),
('1696810','16968','7','0','100','0','0','0','0','0','11','29147','0','21','11','33928','0','0','21','0','0','0','Tunneler - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Prevent Combat Movement on Evade'),
('1696811','16968','2','0','100','1','30','0','12000','17000','11','32714','0','1','0','0','0','0','0','0','0','0','Tunneler - Cast Enrage at 30% HP'),
('1696812','16968','7','0','100','0','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Tunneler - Set Phase 1 on Evade'),
-- Fulgorge
('1867801','18678','11','0','100','0','0','0','0','0','11','29147','0','16','11','33928','0','0','21','0','0','0','Fulgorge - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Prevent Combat Movement on Spawn'),
('1867802','18678','1','0','100','1','1000','1000','1000','1000','11','29147','0','48','0','0','0','0','0','0','0','0','Fulgorge - Cast Sandworm Submerge Visual OOC'),
('1867803','18678','4','0','100','0','0','0','0','0','28','0','29147','0','28','0','33928','0','23','1','0','0','Fulgorge - Remove Sandworm Submerge Visual and Remove Tunnel Bore Passive and Set Phase 1 on Aggro'),
('1867804','18678','9','5','100','1','0','30','2100','4500','11','32330','1','0','0','0','0','0','0','0','0','0','Fulgorge - Cast Poison Spit (Phase 1)'),
('1867805','18678','9','5','100','1','30','100','500','500','11','29147','0','16','11','33928','0','0','21','1','0','0','Fulgorge - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Set Phase 2 at 30 Yards (Phase 1)'),
('1867806','18678','9','5','100','1','30','100','500','500','23','1','0','0','0','0','0','0','0','0','0','0','Fulgorge - Enable Combat Movement at 30 Yards (Phase 1)'),
('1867807','18678','9','3','100','1','0','8','500','500','28','0','29147','0','28','0','33928','0','21','0','0','0','Fulgorge - Remove Sandworm Submerge Visual and Remove Tunnel Bore Passive and Prevent Combat Movement at 8 Yards (Phase 2)'),
('1867808','18678','9','3','100','1','0','8','500','500','23','-1','0','0','0','0','0','0','0','0','0','0','Fulgorge - Set Phase 1 at 8 Yards (Phase 2)'),
('1867809','18678','7','0','100','0','0','0','0','0','11','29147','0','21','11','33928','0','0','21','0','0','0','Fulgorge - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Prevent Combat Movement on Evade'),
('1867810','18678','7','0','100','0','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Fulgorge - Set Phase 1 on Evade'),
-- Serfex the Reaver
('2808301','28083','11','0','100','0','0','0','0','0','11','29147','0','16','11','33928','0','0','21','0','0','0','Serfex the Reaver - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Prevent Combat Movement on Spawn'),
('2808302','28083','1','0','100','1','1000','1000','1000','1000','11','29147','0','48','0','0','0','0','0','0','0','0','Serfex the Reaver - Cast Sandworm Submerge Visual OOC'),
('2808303','28083','4','0','100','0','0','0','0','0','28','0','29147','0','28','0','33928','0','23','1','0','0','Serfex the Reaver - Remove Sandworm Submerge Visual and Remove Tunnel Bore Passive and Set Phase 1 on Aggro'),
('2808304','28083','9','5','100','1','0','50','2100','4500','11','31747','1','0','0','0','0','0','0','0','0','0','Serfex the Reaver - Cast Poison (Phase 1)'),
('2808305','28083','0','5','100','1','20400','20400','45000','50000','11','32738','1','0','0','0','0','0','0','0','0','0','Serfex the Reaver - Cast Bore (Phase 1)'),
('2808306','28083','9','5','100','1','50','100','500','500','11','29147','0','16','11','33928','0','0','21','1','0','0','Serfex the Reaver - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Set Phase 2  at 50 Yards (Phase 1)'),
('2808307','28083','9','5','100','1','50','100','500','500','23','1','0','0','0','0','0','0','0','0','0','0','Serfex the Reaver - Enable Combat Movement at 50 Yards (Phase 1)'),
('2808308','28083','9','3','100','1','0','8','500','500','28','0','29147','0','28','0','33928','0','21','0','0','0','Serfex the Reaver - Remove Sandworm Submerge Visual and Remove Tunnel Bore Passive and Prevent Combat Movement at 8 Yards (Phase 2)'),
('2808309','28083','9','3','100','1','0','8','500','500','23','-1','0','0','0','0','0','0','0','0','0','0','Serfex the Reaver - Set Phase 1 at 8 Yards (Phase 2)'),
('2808310','28083','7','0','100','0','0','0','0','0','11','29147','0','21','11','33928','0','0','21','0','0','0','Serfex the Reaver - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Prevent Combat Movement on Evade'),
('2808311','28083','7','0','100','0','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Serfex the Reaver - Set Phase 1 on Evade'),
-- Snowdrift Jormungar
('2939001','29390','11','0','100','0','0','0','0','0','11','29147','0','16','11','33928','0','0','21','0','0','0','Snowdrift Jormungar - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Prevent Combat Movement on Spawn'),
('2939002','29390','1','0','100','1','1000','1000','1000','1000','11','29147','0','48','0','0','0','0','0','0','0','0','Snowdrift Jormungar - Cast Sandworm Submerge Visual OOC'),
('2939003','29390','4','0','100','0','0','0','0','0','28','0','29147','0','28','0','33928','0','23','1','0','0','Snowdrift Jormungar - Remove Sandworm Submerge Visual and Remove Tunnel Bore Passive and Set Phase 1 on Aggro'),
('2939004','29390','9','5','100','1','0','30','2100','4500','11','50293','1','0','0','0','0','0','0','0','0','0','Snowdrift Jormungar - Cast Corrosive Poison (Phase 1)'),
('2939005','29390','0','5','100','1','20400','20400','45000','50000','11','32738','1','0','0','0','0','0','0','0','0','0','Snowdrift Jormungar - Cast Bore (Phase 1)'),
('2939006','29390','9','5','100','1','30','100','500','500','11','29147','0','16','11','33928','0','0','21','1','0','0','Snowdrift Jormungar - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Set Phase 2  at 30 Yards (Phase 1)'),
('2939007','29390','9','5','100','1','30','100','500','500','23','1','0','0','0','0','0','0','0','0','0','0','Snowdrift Jormungar - Enable Combat Movement at 30 Yards (Phase 1)'),
('2939008','29390','9','3','100','1','0','8','500','500','28','0','29147','0','28','0','33928','0','21','0','0','0','Snowdrift Jormungar - Remove Sandworm Submerge Visual and Remove Tunnel Bore Passive and Prevent Combat Movement at 8 Yards (Phase 2)'),
('2939009','29390','9','3','100','1','0','8','500','500','23','-1','0','0','0','0','0','0','0','0','0','0','Snowdrift Jormungar - Set Phase 1 at 8 Yards (Phase 2)'),
('2939010','29390','7','0','100','0','0','0','0','0','11','29147','0','21','11','33928','0','0','21','0','0','0','Snowdrift Jormungar - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Prevent Combat Movement on Evade'),
('2939011','29390','7','0','100','0','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Snowdrift Jormungar - Set Phase 1 on Evade'),
-- Infesting Jormungar
('3014801','30148','11','0','100','0','0','0','0','0','11','29147','0','16','11','33928','0','0','21','0','0','0','Infesting Jormungar - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Prevent Combat Movement on Spawn'),
('3014802','30148','1','0','100','1','1000','1000','1000','1000','11','29147','0','48','0','0','0','0','0','0','0','0','Infesting Jormungar - Cast Sandworm Submerge Visual OOC'),
('3014803','30148','4','0','100','0','0','0','0','0','28','0','29147','0','28','0','33928','0','23','1','0','0','Infesting Jormungar - Remove Sandworm Submerge Visual and Remove Tunnel Bore Passive and Set Phase 1 on Aggro'),
('3014804','30148','0','5','100','1','3000','6000','18000','21000','11','56103','1','0','0','0','0','0','0','0','0','0','Infesting Jormungar - Cast Jormungar Bite'),
('3014805','30148','0','5','100','1','9000','12000','19000','23000','11','48287','1','0','0','0','0','0','0','0','0','0','Infesting Jormungar - Cast Powerful Bite'),
('3014806','30148','0','5','100','1','20400','20400','45000','50000','11','32738','1','0','0','0','0','0','0','0','0','0','Infesting Jormungar - Cast Bore'),
('3014807','30148','9','5','100','1','8','100','500','500','11','29147','0','16','11','33928','0','0','21','1','0','0','Infesting Jormungar - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Set Phase 2  at 8 Yards (Phase 1)'),
('3014808','30148','9','5','100','1','8','100','500','500','23','1','0','0','0','0','0','0','0','0','0','0','Infesting Jormungar - Enable Combat Movement at 8 Yards (Phase 1)'),
('3014809','30148','9','3','100','1','0','5','500','500','28','0','29147','0','28','0','33928','0','21','0','0','0','Infesting Jormungar - Remove Sandworm Submerge Visual and Remove Tunnel Bore Passive and Prevent Combat Movement at 8 Yards (Phase 2)'),
('3014810','30148','9','3','100','1','0','5','500','500','23','-1','0','0','0','0','0','0','0','0','0','0','Infesting Jormungar - Set Phase 1 at 8 Yards (Phase 2)'),
('3014811','30148','7','0','100','0','0','0','0','0','11','29147','0','21','11','33928','0','0','21','0','0','0','Infesting Jormungar - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Prevent Combat Movement on Evade'),
('3014812','30148','7','0','100','0','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Infesting Jormungar - Set Phase 1 on Evade'),
-- Jormuttar
('3034001','30340','11','0','100','0','0','0','0','0','11','29147','0','16','11','33928','0','0','21','0','0','0','Jormuttar - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Prevent Combat Movement on Spawn'),
('3034002','30340','1','0','100','1','1000','1000','1000','1000','11','29147','0','48','0','0','0','0','0','0','0','0','Jormuttar - Cast Sandworm Submerge Visual OOC'),
('3034003','30340','4','0','100','0','0','0','0','0','28','0','29147','0','28','0','33928','0','23','1','0','0','Jormuttar - Remove Sandworm Submerge Visual and Remove Tunnel Bore Passive and Set Phase 1 on Aggro'),
('3034004','30340','9','5','100','1','0','40','2100','4500','11','61597','1','0','0','0','0','0','0','0','0','0','Jormuttar - Cast Acid Spit (Phase 1)'),
('3034005','30340','0','5','100','1','11000','16000','15000','20000','11','61598','0','1','0','0','0','0','0','0','0','0','Jormuttar - Cast Sweep (Phase 1)'),
('3034006','30340','0','5','100','1','20400','20400','45000','50000','11','32738','1','0','0','0','0','0','0','0','0','0','Jormuttar - Cast Bore (Phase 1)'),
('3034007','30340','9','5','100','1','40','100','500','500','11','29147','0','16','11','33928','0','0','21','1','0','0','Jormuttar - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Set Phase 2  at 40 Yards (Phase 1)'),
('3034008','30340','9','5','100','1','40','100','500','500','23','1','0','0','0','0','0','0','0','0','0','0','Jormuttar - Enable Combat Movement at 40 Yards (Phase 1)'),
('3034009','30340','9','3','100','1','0','8','500','500','28','0','29147','0','28','0','33928','0','21','0','0','0','Jormuttar - Remove Sandworm Submerge Visual and Remove Tunnel Bore Passive and Prevent Combat Movement at 8 Yards (Phase 2)'),
('3034010','30340','9','3','100','1','0','8','500','500','23','-1','0','0','0','0','0','0','0','0','0','0','Jormuttar - Set Phase 1 at 8 Yards (Phase 2)'),
('3034011','30340','7','0','100','0','0','0','0','0','11','29147','0','21','11','33928','0','0','21','0','0','0','Jormuttar - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Prevent Combat Movement on Evade'),
('3034012','30340','7','0','100','0','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Jormuttar - Set Phase 1 on Evade'),
-- Deep Jormungar
('3492001','34920','11','0','100','0','0','0','0','0','11','29147','0','16','11','33928','0','0','21','0','0','0','Deep Jormungar - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Prevent Combat Movement on Spawn'),
('3492002','34920','1','0','100','1','1000','1000','1000','1000','11','29147','0','48','0','0','0','0','0','0','0','0','Deep Jormungar - Cast Sandworm Submerge Visual OOC'),
('3492003','34920','4','0','100','0','0','0','0','0','28','0','29147','0','28','0','33928','0','23','1','0','0','Deep Jormungar - Remove Sandworm Submerge Visual and Remove Tunnel Bore Passive and Set Phase 1 on Aggro'),
('3492004','34920','9','5','100','1','0','40','2100','4500','11','61597','1','0','0','0','0','0','0','0','0','0','Deep Jormungar - Cast Acid Spit (Phase 1)'),
('3492005','34920','0','5','100','1','11000','16000','15000','20000','11','61598','0','1','0','0','0','0','0','0','0','0','Deep Jormungar - Cast Sweep (Phase 1)'),
('3492006','34920','0','5','100','1','20400','20400','45000','50000','11','32738','1','0','0','0','0','0','0','0','0','0','Deep Jormungar - Cast Bore (Phase 1)'),
('3492007','34920','9','5','100','1','40','100','500','500','11','29147','0','16','11','33928','0','0','21','1','0','0','Deep Jormungar - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Set Phase 2  at 40 Yards (Phase 1)'),
('3492008','34920','9','5','100','1','40','100','500','500','23','1','0','0','0','0','0','0','0','0','0','0','Deep Jormungar - Enable Combat Movement at 40 Yards (Phase 1)'),
('3492009','34920','9','3','100','1','0','8','500','500','28','0','29147','0','28','0','33928','0','21','0','0','0','Deep Jormungar - Remove Sandworm Submerge Visual and Remove Tunnel Bore Passive and Prevent Combat Movement at 8 Yards (Phase 2)'),
('3492010','34920','9','3','100','1','0','8','500','500','23','-1','0','0','0','0','0','0','0','0','0','0','Deep Jormungar - Set Phase 1 at 8 Yards (Phase 2)'),
('3492011','34920','7','0','100','0','0','0','0','0','11','29147','0','21','11','33928','0','0','21','0','0','0','Deep Jormungar - Cast Sandworm Submerge Visual and Cast Tunnel Bore Passive and Prevent Combat Movement on Evade'),
('3492012','34920','7','0','100','0','0','0','0','0','22','1','0','0','0','0','0','0','0','0','0','0','Deep Jormungar - Set Phase 1 on Evade');
