DELETE FROM db_script_string WHERE entry IN (2000005623,2000005624,2000005625,2000005626);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000005623,'Easy now, drakeling.',0,0,0,0,'Raelorasz - say_drake_1'),
(2000005624,'A wonderful specimen.',0,0,0,0,'Raelorasz - say_drake_2'),
(2000005625,'Sleep now, young one....',0,0,0,0,'Raelorasz - say_drake_3'),
(2000005626,'Yes, this one should advance my studies nicely....',0,0,0,0,'say_drake_4');
DELETE FROM dbscripts_on_spell WHERE id IN (46702,46693);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, data_flags, dataint, dataint2, dataint3, comments) VALUES
(46702, 1, 15, 46704, 6, 0, 0, 0, 'cast Raelorasz Fireball'),
(46702, 1, 0, 0, 2, 2000005623, 2000005624, 2000005625, 'say text'),
(46702, 5, 0, 0, 2, 2000005626, 0, 0, 'say text'),
(46693, 0, 14, 46691, 2, 0, 0, 0, 'remove Drake Hatchling Subdued aura');