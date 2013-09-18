-- Pre Leviathan event
UPDATE creature SET spawntimesecs=604800 WHERE id IN (34159,33571,33264,33686);
-- storm beacons events (there are 19 of them)
-- this part isn't reflected in any sniff, but it's probably npc 33571 which handles the tower spawns, so despawning them on tower destroyed should be just fine
DELETE FROM dbscripts_on_event WHERE id IN (21257,21260,21245,21283,21277,21279,21298,21278,21287,21276,21275,21274
,21282,21272,21280,21273,21281,21291,21288);
INSERT INTO dbscripts_on_event (id, command, buddy_entry, search_radius, data_flags, comments) VALUES
(21257, 18, 33571, 50, 2, 'despawn Ulduar Gauntlet Generator on tower destroyed'),
(21260, 18, 33571, 50, 2, 'despawn Ulduar Gauntlet Generator on tower destroyed'),
(21245, 18, 33571, 50, 2, 'despawn Ulduar Gauntlet Generator on tower destroyed'),
(21283, 18, 33571, 50, 2, 'despawn Ulduar Gauntlet Generator on tower destroyed'),
(21277, 18, 33571, 50, 2, 'despawn Ulduar Gauntlet Generator on tower destroyed'),
(21279, 18, 33571, 50, 2, 'despawn Ulduar Gauntlet Generator on tower destroyed'),
(21298, 18, 33571, 50, 2, 'despawn Ulduar Gauntlet Generator on tower destroyed'),
(21278, 18, 33571, 50, 2, 'despawn Ulduar Gauntlet Generator on tower destroyed'),
(21287, 18, 33571, 50, 2, 'despawn Ulduar Gauntlet Generator on tower destroyed'),
(21276, 18, 33571, 50, 2, 'despawn Ulduar Gauntlet Generator on tower destroyed'),
(21275, 18, 33571, 50, 2, 'despawn Ulduar Gauntlet Generator on tower destroyed'),
(21274, 18, 33571, 50, 2, 'despawn Ulduar Gauntlet Generator on tower destroyed'),
(21282, 18, 33571, 50, 2, 'despawn Ulduar Gauntlet Generator on tower destroyed'),
(21272, 18, 33571, 50, 2, 'despawn Ulduar Gauntlet Generator on tower destroyed'),
(21280, 18, 33571, 50, 2, 'despawn Ulduar Gauntlet Generator on tower destroyed'),
(21273, 18, 33571, 50, 2, 'despawn Ulduar Gauntlet Generator on tower destroyed'),
(21281, 18, 33571, 50, 2, 'despawn Ulduar Gauntlet Generator on tower destroyed'),
(21291, 18, 33571, 50, 2, 'despawn Ulduar Gauntlet Generator on tower destroyed'),
(21288, 18, 33571, 50, 2, 'despawn Ulduar Gauntlet Generator on tower destroyed');
-- main tower events
DELETE FROM dbscripts_on_event WHERE id IN (21030,21033,21032,21031);
INSERT INTO dbscripts_on_event (id, command, buddy_entry, search_radius, data_flags, comments) VALUES
(21030, 18, 34159, 100, 2, 'despawn Ulduar Gauntlet Generator (small radius) on tower destroyed'), -- tower of life
(21030, 18, 33264, 100, 2, 'despawn Ironwork Cannon on tower destroyed'),
(21030, 13, 194663, 100, 2, 'use Freya\'s Storm Generator'),
(21033, 18, 34159, 100, 2, 'despawn Ulduar Gauntlet Generator (small radius) on tower destroyed'), -- tower of flames
(21033, 18, 33264, 100, 2, 'despawn Ironwork Cannon on tower destroyed'),
(21033, 13, 194664, 100, 2, 'use Mimiron\'s Storm Generator'),
(21032, 18, 34159, 100, 2, 'despawn Ulduar Gauntlet Generator (small radius) on tower destroyed'), -- tower of frost
(21032, 18, 33264, 100, 2, 'despawn Ironwork Cannon on tower destroyed'),
(21032, 13, 194665, 100, 2, 'use Hodir\'s Storm Generator'),
(21031, 18, 34159, 100, 2, 'despawn Ulduar Gauntlet Generator (small radius) on tower destroyed'), -- tower of storms
(21031, 18, 33264, 100, 2, 'despawn Ironwork Cannon on tower destroyed'),
(21031, 13, 194666, 100, 2, 'use Thorim\'s Weather Generator');

-- Event start dialogue
DELETE FROM creature_movement_template WHERE entry IN (33701,33579);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- Dellorah
(33701,1,-771.144, -147.649, 430.055, 4000, 0, 0.069),
(33701,2,-771.144, -147.649, 430.055, 4000, 3370102, 0.069),
(33701,3,-758.898, -77.777, 429.955, 1000, 3370103, 0.80),
-- Brann
(33579,1,-716.568, -54.8669, 429.924,17000,3357901,4.01),
(33579,2,-674.1759, -45.76997, 426.134,1000,3357902,0.068);
-- texts
DELETE FROM db_script_string WHERE entry IN (2000005570,2000005571,2000005572,2000005573,2000005574,2000005575,2000005576);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000005570,'What... What did you just do, $n?! Brann! Braaaaannn!',0,1,0,0,'High Explorer Dellorah - say towers active 1'),
(2000005571,'Brann! $n just activated the orbital defense system! If we don\'t get out of here soon, we\'re going to be toast!',0,1,0,0,'High Explorer Dellorah - say towers active 2'),
(2000005572,'Pentarus, you heard the man. Have your mages release the shield and let these brave souls through!',0,1,0,0,'Brann Bronzebeard - say event start 1'),
(2000005573,'Of course, Brann: We will have the shield down momentarily.',0,1,0,0,'Archmage Rhydian - say event start 2'),
(2000005574,'Okay! Let\'s move out. Get into your machines; I\'ll speak to you from here via the radio.',15807,0,0,0,'Bronzebeard Radio - say event start 3'),
(2000005575,'Mages of the Kirin Tor, on Brann\'s Command, release the shield! Defend this platform and our allies with your lives! For Dalaran!',0,1,0,0,'Archmage Rhydian - say event start 4'),
(2000005576,'Our allies are ready. Bring down the shield and make way!',0,1,0,0,'Brann Bronzebeard - say event start 5'); 
-- epilogue script
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3370102,3370103,3357901,3357902);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, comments) VALUES
-- Dellorah
(3370102, 0, 25, 1, 0, 0, 0, 0, 0, 'Set run on'),
(3370102, 0, 0, 0, 0, 0, 0, 0, 2000005570, 'Say towers active 1'), -- ToDo: find a proper way to set the player as target
(3370103, 0, 0, 0, 0, 0, 0, 0, 2000005571, 'Say towers active 2'),
(3370103, 0, 32, 1, 0, 0, 0, 0, 0, 'Pause movement'),
-- Brann
(3357901, 0, 25, 1, 0, 0, 0, 0, 0, 'Set run on'),
(3357901, 0, 0, 0, 0, 0, 0, 0, 2000005572, 'Say event start 1'),
(3357901, 0, 29, 1, 2, 0, 0, 0, 0, 'Remove NPC flag'),
(3357901, 9, 0, 0, 0, 33624, 50, 0, 2000005573, 'Say event start 2'),
-- ToDo: start movement for the mages, the stone shapers, engineers and demolitionists
(3357901, 17, 0, 0, 0, 0, 0, 0, 2000005574, 'Say event start 3'),
(3357901, 39, 0, 0, 0, 33624, 50, 0, 2000005575, 'Say event start 4'),
(3357901, 50, 0, 0, 0, 0, 0, 0, 2000005576, 'Say event start 5'),
(3357902, 0, 32, 1, 0, 0, 0, 0, 0, 'Pause movement');
-- ToDo: Mages (npc 33662) should cast spell 48310 on Ulduar shield bunnies (npc 33779). To be done by individual movement of the first 2 mages