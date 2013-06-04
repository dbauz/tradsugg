DELETE FROM dbscripts_on_quest_start WHERE id = 10540;
INSERT INTO dbscripts_on_quest_start  (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10540,0,15,36620,0,0,0,0x06,0,0,0,0,0,0,0,0,'Cast Spirit Hunter'),
(10540,1,15,36613,0,21332,100,0x20,0,0,0,0,0,0,0,0,'Cast Aspect of the Spirit Hunter');
UPDATE quest_template SET StartScript = 10540 WHERE entry = 10540;
UPDATE creature_template SET faction_A = 90, faction_H = 90 WHERE entry = 20427;
DELETE FROM creature WHERE id IN (21334);
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(21334, 530, 1, 1, 0, 0, -4051.381, 2616.373, 127.9368, 5.078908, 300, 0, 0, 9250, 0, 0, 0);
-- equipment (ytdb)
UPDATE creature_template SET equipment_id=4824, faction_A=35, faction_H=35 WHERE entry=21332;
DELETE FROM creature_equip_template WHERE entry=4824;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES (4824, 12294, 0, 30452);
DELETE FROM dbscripts_on_creature_death WHERE id = 20427;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, buddy_entry, search_radius, data_flags, dataint, comments) VALUES
(20427, 0, 0, 0, 21332, 100, 0x20, 2000005557, 'say veneratus epilogue 1'),
(20427, 3, 0, 0, 21332, 100, 0x20, 2000005558, 'say veneratus epilogue 2'),
(20427, 5, 15, 36781, 21332, 100, 0x20, 0, 'cast Despawn Spirit Hunter'),
(20427, 6, 14, 36620, 0, 0, 0x06, 0, 'remove Spirit Hunter aura'),
(20427, 6, 18, 0, 21332, 100, 0x20, 0, 'despawn spirit hunter');
DELETE FROM db_script_string WHERE entry IN (2000005557,2000005558);
INSERT INTO db_script_string (entry,content_default,content_loc2,sound,type,language,emote,comment) VALUES
(2000005557,'It is dying! The second part of the Cipher of Damnation is ours. I...','Il est en train de mourir! La deuxième partie de la formule de damnation est nôtre. I.',0,0,0,22,'spirit hunter - say epilogue 1'),
(2000005558,'I am fading... Return to Ar\'tor... Ret... rn... to...','Je suis la décoloration ... Retour à Ar\'tor ... Ret ... rn ... à ...',0,0,0,0,'spirit hunter - say epilogue 2');