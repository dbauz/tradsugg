-- ### Culling of Stratholme ###
UPDATE creature_template SET modelid_1=22712, modelid_2=17200 WHERE entry=27827;
-- fix bad script target
DELETE FROM spell_script_target WHERE entry=49590;
INSERT INTO spell_script_target VALUES
(49590,1,27827,0);
-- npc movement
UPDATE creature SET MovementType=0, spawndist=0 WHERE id IN (27885,30571);
UPDATE creature SET position_x=1553.526, position_y=578.1731, position_z=99.8456, orientation=5.707227 WHERE id=30571;
UPDATE creature_template SET MovementType=2 WHERE entry IN (27891,27892,30997);
-- ### Part 1 ###
-- movement
DELETE FROM creature_movement_template WHERE entry IN (30571,30997);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- inn
(30571,1,1549.571, 575.5571, 100.0522, 1000, 3057101, 0.82),
(30571,2,1554.849, 588.465, 99.775, 1000, 3057102, 0.88),
(30571,3,1549.609, 575.544, 100.052, 1000, 3057103, 4.17),
-- chromie end
(30997,1,2319.562, 1506.409, 152.0499, 0, 3099701, 3.78),
(30997,2,2306.77, 1496.78, 128.362, 1000, 3099702, 3.78);
-- movement scripts
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3057101,3057102,3057103,3099701,3099702);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, y, z, o, comments) VALUES
-- inn
(3057101, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pause movement'),
(3057101, 0, 0, 0, 0, 0, 0, 0, 2000005580, 2000005581, 0, 0, 0, 'Michael Belfast - yell text'),
(3057101, 13, 0, 0, 0, 30551, 40, 0, 2000005582, 0, 0, 0, 0, 'Hearthsinger Forresten - yell text'),
(3057101, 20, 0, 0, 0, 30553, 40, 0, 2000005583, 0, 0, 0, 0, 'Footman James - yell text'),
(3057101, 24, 0, 0, 0, 30552, 40, 0, 2000005584, 0, 0, 0, 0, 'Fras Siabi - yell text'),
(3057101, 27, 1, 5, 0, 30552, 40, 0, 0, 0, 0, 0, 0, 'Fras Siabi - emote'),
(3057101, 28, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Resume movement'),
(3057102, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pause movement'),
(3057102, 0, 0, 0, 0, 0, 0, 0, 2000005585, 0, 0, 0, 0, 'Michael Belfast - yell text'),
(3057102, 3, 0, 0, 0, 31017, 40, 0, 2000005586, 0, 0, 0, 0, 'Mal Corricks - yell text'),
(3057102, 8, 0, 0, 0, 30561, 40, 0, 2000005587, 0, 0, 0, 0, 'Gryan Stoutmantle - yell text'),
(3057102, 18, 0, 0, 0, 31017, 40, 0, 2000005588, 0, 0, 0, 0, 'Mal Corricks - emote text'),
(3057102, 18, 0, 0, 0, 31017, 40, 0, 2000005589, 0, 0, 0, 0, 'Mal Corricks - yell text'),
(3057102, 18, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Resume movement'),
(3057102, 21, 0, 0, 0, 30553, 40, 0, 2000005590, 0, 0, 0, 0, 'Footman James- yell text'),
(3057102, 26, 0, 0, 0, 30551, 40, 0, 2000005591, 0, 0, 0, 0, 'Hearthsinger Forresten - yell text'),
(3057102, 26, 0, 0, 0, 30552, 40, 0, 2000005592, 0, 0, 0, 0, 'Fras Siabi - emote text'),
(3057103, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pause movement'),
-- chromie end
(3099701, 0, 29, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'remove npc_flag_questgiver'),
(3099702, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pause movement'),
(3099702, 3, 15, 58986, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Chromie Transform'),
(3099702, 3, 0, 0, 0, 0, 0, 0, 2000005593, 0, 0, 0, 0, 'Chromie - yell text'),
(3099702, 4, 29, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'add npc_flag_gossip | npc_flag_questgiver');
-- texts
DELETE FROM db_script_string WHERE entry BETWEEN 2000005580 AND 2000005593;
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
-- inn
(2000005580,'Hey! Stop rooting around in my cellar! Clear out!',0,0,0,5,'Michael Belfast - say_inn_1'),
(2000005581,'What were you doing in my cellar? There\'s a food scare going on, and the last thing I need is strangers rummaging around in my goods! Shoo!',0,0,0,5,'Michael Belfast - say_inn_2'),
(2000005582,'This whole situation seems a bit paranoid, don\'t you think?',0,0,0,6,'Hearthsinger Forresten - say_inn_2'),
(2000005583,'Orders are orders. If the Prince says jump...',0,0,0,1,'Footman James - say_inn_3'),
(2000005584,'It\'s a strange order, you can\'t deny. Suspicious food? Under that definition, you should arrest Belfast!',0,0,0,1,'Fras Siabi - say_inn_4'),
(2000005585,'I HEARD THAT! No more ale for you! Not a drop!',0,0,0,5,'Michael Belfast - say_inn_5'),
(2000005586,'Enough, Michael. Business is hurting enough with this scare as it is. We can use every copper.',0,0,0,1,'Mal Corricks - say_inn_6'),
(2000005587,'The soldiers are doing important work. The safety of the people is more important, Mal, if you\'re interested in your customers living to spend another day.',0,0,0,1,'Gryan Stoutmantle - say_inn_7'),
(2000005588,'%s grudgingly nods.',0,2,0,0,'Mal Corricks - emote_inn_1'),
(2000005589,'I can\'t argue with that.',0,0,0,1,'Mal Corricks - say_inn_8'),
(2000005590,'Don\'t worry too much. By the time I went off duty, we hadn\'t found a scrap of befouled grain here.',0,0,0,1,'Footman James - say_inn_9'),
(2000005591,'Thank the Light for that.',0,0,0,1,'Hearthsinger Forresten - say_inn_10'),
(2000005592,'%s nods.',0,2,0,0,'Fras Siabi - emote_inn_2'),
-- chromie
(2000005593,'Why, hello again!',0,0,0,0,'Chromie say_end_1');

-- ### Part 2 ###
-- movement
DELETE FROM creature_movement_template WHERE entry IN (27903,27877);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- roger
(27903,1,1588.942, 597.9799, 99.37262, 6000, 2790301, 2.80),
(27903,2,1589.883, 608.7765, 99.63657, 0, 0, 0),
(27903,3,1588.607, 616.2296, 99.88657, 0, 0, 0),
(27903,4,1586.06, 619.9573, 99.96897, 0, 0, 0),
(27903,5,1580.011, 623.6895, 100.0418, 7000, 2790305, 4.43),
(27903,6,1575.576, 619.935, 99.422, 0, 0, 0),
(27903,7,1577.633, 620.642, 99.584, 6000, 2790307, 0.61),
(27903,8,1580.215, 624.368, 99.924, 0, 0, 0),
(27903,9,1587.471, 618.181, 99.850, 0, 0, 0),
(27903,10,1592.646, 590.888, 99.151, 0, 2790310, 0),
-- morigam
(27877,1,1561.57, 670.32, 102.144, 11000, 2787701, 0.57),
(27877,2,1565.856, 668.4106, 102.1827, 0, 0, 0),
(27877,3,1569.26, 668.5543, 102.1814, 5000, 0, 0.76), 
(27877,4,1569.26, 668.5543, 102.1814, 27000, 2787704, 2.61),
(27877,5,1576.119, 657.675, 102.09, 0, 0, 0),
(27877,6,1586.040, 646.113, 100.910, 0, 0, 0),
(27877,7,1609.189, 697.134, 106.902, 0, 2790310, 0);
-- movement scripts
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2790301,2790305,2790307,2790310,2787701,2787704);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, x, y, z, o, comments) VALUES
-- roger
(2790301, 1, 0, 0, 0, 0, 0, 0, 2000005594, 0, 0, 0, 0, 0, 'Roger Owens - yell text'),
(2790305, 0, 0, 0, 0, 0, 0, 0, 2000005595, 0, 0, 0, 0, 0, 'Roger Owens - yell text'),
(2790305, 5, 0, 0, 0, 0, 0, 0, 2000005596, 0, 0, 0, 0, 0, 'Roger Owens - yell text'),
(2790307, 0, 0, 0, 0, 0, 0, 0, 2000005597, 0, 0, 0, 0, 0, 'Roger Owens - yell text'),
(2790307, 4, 0, 0, 0, 0, 0, 0, 2000005598, 0, 0, 0, 0, 0, 'Roger Owens - yell text'),
(2790310, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'despawn'),
-- morigam
(2787701, 3, 0, 0, 0, 0, 0, 0, 2000005599, 0, 0, 0, 0, 0, 'Sergeant Morigan - yell text'),
(2787701, 9, 0, 0, 0, 27876, 10, 0, 2000005600, 0, 0, 0, 0, 0, 'Silvio Perelli - yell text'),
(2787704, 0, 0, 0, 0, 0, 0, 0, 2000005601, 0, 0, 0, 0, 0, 'Sergeant Morigan - yell text'),
(2787704, 3, 3, 0, 0, 27876, 10, 0, 0, 0, 1563.337, 671.6413, 102.1412, 5.91, 'Silvio Perelli - set orientation'),
(2787704, 5, 0, 0, 0, 27876, 10, 0, 2000005602, 0, 0, 0, 0, 0, 'Silvio Perelli - yell text'),
(2787704, 8, 0, 0, 0, 0, 0, 0, 2000005603, 0, 0, 0, 0, 0, 'Sergeant Morigan - yell text'),
(2787704, 18, 0, 0, 0, 27876, 10, 0, 2000005604, 0, 0, 0, 0, 0, 'Silvio Perelli - yell text'),
(2787704, 23, 0, 0, 0, 0, 0, 0, 2000005605, 0, 0, 0, 0, 0, 'Sergeant Morigan - yell text');
-- texts
DELETE FROM db_script_string WHERE entry BETWEEN 2000005594 AND 2000005605;
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
-- roger
(2000005594,'Ok, enough work for now. Time for refreshments and a little conversation in the inn.',0,0,0,1,'Roger Owens - say_roger_1'),
(2000005595,'Wait, what\'s that smell?',0,0,0,1,'Roger Owens - say_roger_2'),
(2000005596,'Can\'t be me, I took a bath 3 days ago!',0,0,0,1,'Roger Owens - say_roger_3'),
(2000005597,'Oh, close call. It\'s just the grain here.',0,0,0,1,'Roger Owens - say_roger_4'),
(2000005598,'Wait a second. Grain isn\'t supposed to smell like THAT! I better go find a guard.',0,0,0,1,'Roger Owens - say_roger_5'),
-- morigam
(2000005599,'You don\'t mind me checking out your merchandise for signs of tampering, do you?',0,0,0,1,'Sergeant Morigan - say_morigan_1'),
(2000005600,'No, Sergeant.',0,0,0,0,'Silvio Perelli - say_morigan_2'),
(2000005601,'Wait, what is this? You\'ve been holding out on me, Perelli!',0,0,0,1,'Sergeant Morigan - say_morigan_3'),
(2000005602,'What are you talking about, Sergeant!',0,0,0,5,'Silvio Perelli - say_morigan_4'),
(2000005603,'I\'m confiscating this suspicious grain, Perelli. We were looking for signs of tampered food, and it would be in your best interest to stay put while Prince Arthas checks this out.',0,0,0,1,'Sergeant Morigan - say_morigan_5'),
(2000005604,'You have to believe me, I\'m innocent!',0,0,0,1,'Silvio Perelli - say_morigan_6'),
(2000005605,'We\'ll see about that, Perelli. We\'ll see about that.',0,0,0,1,'Sergeant Morigan - say_morigan_7');
-- the following are the intro texts; not used here -  keep for reference only
-- (x,'Mr. Perelli, I know you travel around quite a bit hawking your goods. Surely you\'ve heard rumors or information about the Scourge?',0,0,0,6,'Sergeant Morigan - say_morigan_intro_1'),
-- (x,'Mr. Perelli, have these goods been under your supervision at all times?',0,0,0,6,'Sergeant Morigan - say_morigan_intro_2'),
-- (x,'Mr. Perelli, if you happen across any signs of Scourge activity or shady dealings in your travels, let the nearest Lordaeron soldier know.',0,0,0,6,'Sergeant Morigan - say_morigan_intro_3'),
-- (x,'Mr. Perelli, have you seen any suspicious activity by men wearing dark robes in the last few weeks?',0,0,0,6,'Sergeant Morigan - say_morigan_intro_4'),
-- (x,'Nope.',0,0,0,0,'Silvio Perelli - say_morigan_intro_5');

-- ### Part 3 ###
-- movement
DELETE FROM creature_movement_template WHERE entry IN (27885,27891,27892,27907);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- jena
(27885,1,1602.132, 743.804, 114.7333, 0, 0, 0),
(27885,2,1607.698, 744.5809, 114.7331, 0, 0, 0),
(27885,3,1614.583, 743.2285, 114.1251, 0, 0, 0),
(27885,4,1617.615, 737.8293, 113.4772, 0, 0, 0),
(27885,5,1623.717, 727.2723, 112.285, 0, 0, 0),
(27885,6,1628.827, 726.0397, 112.5336, 0, 0, 0),
(27885,7,1633.366, 726.3549, 113.5041, 20000, 2788507, 0.61),
(27885,8,1629.688, 729.167, 112.6997, 6000, 2788508, 0),
(27885,9,1613.928, 715.9256, 109.6573, 0, 0, 0),
(27885,10,1607.678, 700.3972, 107.06, 0, 2790310, 0),
-- malcolm
(27891,1,1605.452, 804.9279, 122.961, 0, 2789101, 0),
(27891,2,1613.629, 795.9061, 121.8324, 1000, 2789102, 0.63),
(27891,3,1623.677, 799.6086, 120.5017, 0, 0, 0),
(27891,4,1625.647, 805.1909, 121.0386, 0, 0, 0),
(27891,5,1623.526, 808.2736, 121.2789, 8000 , 2789105, 0.06),
(27891,6,1628.014, 806.9391, 120.2136, 0, 0, 0),
(27891,7,1630.197, 808.7338, 120.2776, 0, 0, 0),
(27891,8,1630.235, 810.9423, 120.3985, 7000, 2789108, 2.16),
(27891,9,1641.452, 812.600, 119.948, 0, 0, 0),
(27891,10,1679.852, 912.245, 120.533, 0, 0, 0),
(27891,11,1699.915, 967.110, 121.643, 0, 0, 0),
(27891,12,1678.393, 1026.890, 125.431, 0, 0, 0),
(27891,13,1678.943, 1093.130, 126.899, 0, 0, 0),
(27891,14,1700.042, 1103.880, 130.872, 0, 2790310, 0),
-- scruffy
(27892,1,1609.497, 797.1868, 122.3031, 0, 0, 0),
(27892,2,1612.855, 794.5053, 121.9534, 0, 0, 0),
(27892,3,1617.072, 793.0383, 121.2942, 0, 0, 0),
(27892,4,1621.126, 794.4536, 120.6827, 0, 0, 0),
(27892,5,1624.841, 798.4964, 120.3256, 0, 0, 0),
(27892,6,1626.933, 801.0958, 120.1692, 0, 0, 0),
(27892,7,1628.722, 805.1, 120.2136, 1000, 2789207, 2.56),
(27892,8,1623.526, 808.2736, 121.2789, 0, 0, 0),
(27892,9,1629.004, 810.138, 120.4927, 11000,2789209, 1.69),
(27892,10,1630.692, 808.011, 120.083, 1000, 2789210, 4.40),
-- bartelby
(27907,1,1670.26, 872.873, 120.035, 2000, 2790701, 0.41),
(27907,2,1672.917, 871.3535, 120.3277, 15000, 2790702, 0.92),
(27907,3,1667.076, 870.0946, 119.9527, 0, 0, 0),
(27907,4,1662.828, 866.6351, 119.8706, 0, 0, 0),
(27907,5,1658.108, 859.9075, 119.1869, 0, 0, 0),
(27907,6,1641.229, 825.2514, 120.1012, 0, 0, 0),
(27907,7,1638.217, 815.4248, 119.9439, 0, 2790310, 0);
-- movement scripts
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2788507,2788508,2789101,2789102,2789105,2789108,2789207,2789209,2789210);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, x, y, z, o, comments) VALUES
-- jena
(2788507, 0, 0, 0, 0, 0, 0, 0, 2000005606, 0, 0, 0, 0, 0, 'Jena Anderson - yell text'),
(2788507, 12, 3, 0, 0, 27884, 20, 0, 0, 0, 1635.827, 723.1434, 113.5619, 3.18, 'Martha Goslin - set orientation'),
(2788507, 12, 0, 0, 0, 27884, 20, 0, 2000005607, 0, 0, 0, 0, 0, 'Martha Goslin - yell text'),
(2788507, 16, 0, 0, 0, 0, 0, 0, 2000005608, 0, 0, 0, 0, 0, 'Jena Anderson - yell text'),
(2788508, 0, 0, 0, 0, 0, 0, 0, 2000005610, 0, 0, 0, 0, 0, 'Jena Anderson - yell text'),
(2788508, 1, 0, 0, 0, 0, 0, 0, 2000005609, 0, 0, 0, 0, 0, 'Jena Anderson - yell text'),
(2788508, 4, 0, 0, 0, 27884, 20, 0, 2000005611, 0, 0, 0, 0, 0, 'Martha Goslin - yell text'),
-- malcolm
(2789101, 0, 10, 27892, 60000, 0, 0, 0, 0, 0, 1601.438, 804.9377, 123.701, 5.43, 'Malcolm Moore - spawn Scruffy'),
(2789102, 0, 0, 0, 0, 0, 0, 0, 2000005612, 0, 0, 0, 0, 0, 'Malcolm Moore - yell text'),
(2789105, 4, 0, 0, 0, 0, 0, 0, 2000005614, 0, 0, 0, 0, 0, 'Malcolm Moore - yell text'),
(2789108, 0, 0, 0, 0, 0, 0, 0, 2000005615, 0, 0, 0, 0, 0, 'Malcolm Moore - yell text'),
(2789108, 4, 0, 0, 0, 0, 0, 0, 2000005616, 0, 0, 0, 0, 0, 'Malcolm Moore - yell text'),
-- scruffy
(2789207, 0, 0, 0, 0, 0, 0, 0, 2000005613, 0, 0, 0, 0, 0, 'Scruffy - emote text'),
(2789209, 0, 1, 393, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scruffy - emote'),
(2789209, 0, 16, 9035, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Scruffy - play sound'),
(2789210, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pause movement');
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2790701,2790702);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, comments) VALUES
-- bartelby
(2790701, 0, 0, 0, 0, 0, 0, 0, 2000005617, 2000005618, 2000005619, 0, 'Bartleby Battson - yell text'),
(2790702, 0, 0, 0, 0, 0, 0, 0, 2000005620, 0, 0, 0, 'Bartleby Battson - yell text'),
(2790702, 6, 0, 0, 0, 0, 0, 0, 2000005621, 0, 0, 0, 'Bartleby Battson - yell text'),
(2790702, 9, 0, 0, 0, 0, 0, 0, 2000005622, 0, 0, 0, 'Bartleby Battson - yell text');
-- texts
DELETE FROM db_script_string WHERE entry BETWEEN 2000005606 AND 2000005622;
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
-- jena
(2000005606,'Martha, I\'m out of flour for bread. You wouldn\'t happen to have any grain from that recent shipment, would you?',0,0,0,6,'Jena Anderson - say_jena_1'),
(2000005607,'Oh hello, Jena. Of course you can borrow some grain. Help yourself.',0,0,0,1,'Martha Goslin - say_jena_2'),
(2000005608,'Thanks, Martha! I owe you one.',0,0,0,0,'Jena Anderson - say_jena_3'),
(2000005609,'Martha, something\'s wrong with this grain! Some of the Prince\'s soldiers were looking for this. I\'m going to go look for one.',0,0,0,5,'Jena Anderson - say_jena_4'),
(2000005610,'Oh, dear.',0,0,0,1,'Jena Anderson - say_jena_5'),
(2000005611,'Oh, my.',0,0,0,1,'Martha Goslin - say_jena_6'),
-- malcolm
(2000005612,'Looks like a storm\'s coming in, Scruffy...',0,0,0,0,'Malcolm Moore - say_malcolm_1'),
(2000005613,'%s begins to growl...',1108,2,0,0,'Scruffy - say_malcolm_2'),
(2000005614,'What\'s wrong, pal?',0,0,0,0,'Malcolm Moore - say_malcolm_3'),
(2000005615,'What did you find, boy?',0,0,0,16,'Malcolm Moore - say_malcolm_4'),
(2000005616,'This is no good, Scruffy. Stay here and guard the house, I need to go find a soldier.',0,0,0,0,'Malcolm Moore - say_malcolm_6'),
-- bartleby
(2000005617,'This grain shipment has been nothing but trouble!',0,0,0,5,'Bartleby Battson - say_bartelby_1'),
(2000005618,'I\'m going to lose my on time bonus because of this!',0,0,0,5,'Bartleby Battson - say_bartelby_2'),
(2000005619,'I wasn\'t even supposed to be here today!',0,0,0,5,'Bartleby Battson - say_bartelby_3'),
(2000005620,'Well, guess I should load everything back into the cart.',0,0,0,0,'Bartleby Battson - say_bartelby_4'),
(2000005621,'Oh, come on! My cart broke, my horse lost a shoe, and now the cargo goes bad!',0,0,0,5,'Bartleby Battson - say_bartelby_5'),
(2000005622,'I guess I\'ll go find the athorities. If I\'m lucky they\'ll tell me it\'s the plague and that we\'re all going to die.',0,0,0,1,'Bartleby Battson - say_bartelby_6');

INSERT INTO gameobject VALUES
(200028, 190095, 595, 3, 1, 1674.414, 872.2995, 120.4001, 5.166176, 0, 0, 1, 0, -3600, 255, 1),
(200029, 190095, 595, 3, 1, 1628.989, 812.1284, 120.6871, 0.4363316, 0, 0, 1, 0, -3600, 255, 1),
(200030, 190095, 595, 3, 1, 1629.663, 731.3397, 112.8453, 3.857183, 0, 0, 1, 0, -3600, 255, 1),
(200031, 190095, 595, 3, 1, 1570.909, 669.9181, 102.3073, 3.071766, 0, 0, 1, 0, -3600, 255, 1),
(200032, 190095, 595, 3, 1, 1579.423, 621.4219, 99.73167, 6.126106, 0, 0, 1, 0, -3600, 255, 1);