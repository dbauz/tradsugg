-- Leviathan outro
UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry=34120;
-- movement may be more dynamic
DELETE FROM creature_movement_template WHERE entry IN (34119);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(34119,1,233.9606, -123.4371, 409.6924, 1000, 3411901, 1.02);
-- texts
DELETE FROM db_script_string WHERE entry IN (2000005559,2000005560,2000005561,2000005562,2000005563,2000005564,2000005565,2000005566,2000005567,2000005568,2000005569);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000005559,'What a battle! Did you see that, Rhydian?!',0,1,0,0,'Brann Bronzebeard - say epilogue 1'),
(2000005560,'Our friends fought well, Brann, but we\'re not done yet.',0,1,0,0,'Archmage Rhydian - say epilogue 2'),
(2000005561,'Perhaps so, but it\'s only a matter of time until we break back into Ulduar. Any luck finding a way to teleport inside?',0,1,0,0,'Brann Bronzebeard - say epilogue 3'),
(2000005562,'None at all. I suspect it has something to do with that giant mechanical construct that our scouts spotted in front of the gate.',0,1,0,0,'Archmage Rhydian - say epilogue 4'),
(2000005563,'Oi. So we\'ll have to contend with that thing after all then?',0,1,0,0,'Brann Bronzebeard - say epilogue 5'),
(2000005564,'What about the plated proto-drake and the fire giant that were spotted nearby? Think your mages can handle those?',0,1,0,0,'Brann Bronzebeard - say epilogue 6'),
(2000005565,'The Kirin Tor can\'t possibly spare any additional resources to take on anything that size. We may not have to though.',0,1,0,0,'Archmage Rhydian - say epilogue 7'),
(2000005566,'We can sneak past them. As long as we can take down that construct in front of the gate, we should be able to get inside.',0,1,0,0,'Archmage Rhydian - say epilogue 8'),
(2000005567,'Sneak?! What do you think we are, marmots?',0,1,0,0,'Brann Bronzebeard - say epilogue 9'),
(2000005568,'We\'re hunting an old god, Brann.',0,1,0,0,'Archmage Rhydian - say epilogue 10'),
(2000005569,'Fine. If our allies are going to be the ones getting their hands dirty, we\'ll leave it to them to decide how to proceed.',0,1,0,0,'Brann Bronzebeard - say epilogue 11');
-- epilogue script
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3411901);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, x, y, z, o, comments) VALUES
(3411901, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pause movement'),
(3411901, 2, 0, 0, 0, 0, 0, 0, 2000005559, 0, 0, 0, 0, 'Say epilogue 1'),
(3411901, 11, 0, 0, 0, 33696, 10, 0, 2000005560, 0, 0, 0, 0, 'Say epilogue 2'),
(3411901, 19, 0, 0, 0, 0, 0, 0, 2000005561, 0, 0, 0, 0, 'Say epilogue 3'),
(3411901, 27, 0, 0, 0, 33696, 10, 0, 2000005562, 0, 0, 0, 0, 'Say epilogue 4'),
(3411901, 36, 0, 0, 0, 0, 0, 0, 2000005563, 0, 0, 0, 0, 'Say epilogue 5'),
(3411901, 44, 0, 0, 0, 0, 0, 0, 2000005564, 0, 0, 0, 0, 'Say epilogue 6'),
(3411901, 53, 0, 0, 0, 33696, 10, 0, 2000005565, 0, 0, 0, 0, 'Say epilogue 7'),
(3411901, 61, 0, 0, 0, 33696, 10, 0, 2000005566, 0, 0, 0, 0, 'Say epilogue 8'),
(3411901, 70, 0, 0, 0, 0, 0, 0, 2000005567, 0, 0, 0, 0, 'Say epilogue 9'),
(3411901, 78, 0, 0, 0, 33696, 10, 0, 2000005568, 0, 0, 0, 0, 'Say epilogue 10'),
(3411901, 86, 0, 0, 0, 0, 0, 0, 2000005569, 0, 0, 0, 0, 'Say epilogue 11');
-- spawn other creatures (possible wp required)
DELETE FROM dbscripts_on_creature_death WHERE id=33113;
INSERT INTO dbscripts_on_creature_death(id, command, datalong, datalong2, x, y, z, o, comments) VALUES
(33113, 10, 34145, 0, 162.2077, -43.57856, 409.887, 6.254, 'spawn Expedition Engineer'),
(33113, 10, 34145, 0, 166.7473, -43.44396, 409.887, 6.213, 'spawn Expedition Engineer'),
(33113, 10, 34145, 0, 172.0512, -43.68175, 410.1541, 6.196, 'spawn Expedition Engineer'),
(33113, 10, 34145, 0, 162.8185, -28.78179, 409.887, 0.079, 'spawn Expedition Engineer'),
(33113, 10, 34145, 0, 167.3567, -28.64811, 409.887, 0.069, 'spawn Expedition Engineer'),
(33113, 10, 34145, 0, 172.6605, -28.88596, 409.887, 0.147, 'spawn Expedition Engineer'),
(33113, 10, 34144, 0, 162.7033, -49.80371, 409.887, 6.263, 'spawn Expedition Mercenary'),
(33113, 10, 34144, 0, 166.494, -49.84945, 409.887, 6.268, 'spawn Expedition Mercenary'),
(33113, 10, 34144, 0, 171.7734, -50.05095, 409.887, 0.000, 'spawn Expedition Mercenary'),
(33113, 10, 34144, 0, 163.4216, -36.55366, 409.887, 0.174, 'spawn Expedition Mercenary'),
(33113, 10, 34144, 0, 167.2133, -36.5988, 409.887, 0.174, 'spawn Expedition Mercenary'),
(33113, 10, 34144, 0, 172.491, -36.80019, 409.887, 0.225, 'spawn Expedition Mercenary');
DELETE FROM creature WHERE id IN (34145,34144);