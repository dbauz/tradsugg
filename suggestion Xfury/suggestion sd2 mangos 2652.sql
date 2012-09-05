insert into creature_movement_scripts (id, delay, command, datalong, comments) values
(902201,0,18,0,'Despawn Dughal on last waypoint'),
(967901,0,18,0,'Despawn Tobias on last waypoint');
DELETE FROM db_script_string WHERE entry in (2000009995,2000009996,2000009997,2000009998);
insert into db_script_string (entry, content_default) values
(2000009995,'Get him out of there!'),
(2000009996,'Perhaps Ograbisi will use your head as a tiny little hat when I\'m through with you.'),
(2000009997,'Where I come from, you get shanked for opening another inmate\'s cell door!'),
(2000009998,'Ograbisi needs new hat.');
UPDATE `db_script_string` SET `content_loc2` = 'Sortez-le de là!' WHERE `entry` = 2000009995;
UPDATE `db_script_string` SET `content_loc2` = 'Peut-être Ograbisi utilisera votre tête comme petit chapeau minuscule quand j\'en aurai fini avec vous.' WHERE `entry` = 2000009996;
UPDATE `db_script_string` SET `content_loc2` = 'De là où je viens, vous obtenez shanked pour ouvrir la porte des cellules d\'un autre détenu !' WHERE `entry` = 2000009997;
UPDATE `db_script_string` SET `content_loc2` = 'Ograbisi a besoin de nouveau chapeau.' WHERE `entry` = 2000009998;

delete from gameobject_template_scripts where id in (170562,170567,170568,170569);
insert into gameobject_template_scripts (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, comments) values
-- dughal
(170562, 1, 0, 0, 0, 9023, 20, 3, 2000009995, 'Windsor - say on Dughal door open'),
-- jaz
(170568, 1, 0, 0, 0, 9677, 20, 3, 2000009998 ,'Ograbisi - say on Jaz door open'),
(170568, 2, 22, 54, 5, 9681, 20, 3, 0, 'Jaz - change faction to hostile'),
(170568, 2, 22, 54, 5, 9677, 20, 3, 0, 'Ograbisi - change faction to hostile'),
-- shill
(170569, 1, 0, 0, 0, 9678, 20, 3, 2000009996, 'Shill - say on Shill door open'),
(170569, 1, 22, 54, 5, 9678, 20, 3, 0, 'Shill - change faction to hostile'),
-- crest
(170567, 1, 0, 0, 0, 9680, 20, 3, 2000009997, 'Crest - say on Crest door open'),
(170567, 1, 22, 54, 5, 9680, 20, 3, 0, 'Crest - change faction to hostile');
delete from creature_movement_template where entry=9679;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id) values
(9679,1,549.21,-281.07,-75.27,0),
(9679,2,554.39,-267.39,-73.68,0),
(9679,3,533.59,-249.38,-67.04,0),
(9679,4,519.44,-217.02,-59.34,0),
(9679,5,506.55,-153.49,-62.34,967901);
delete from creature_movement_template where entry=9022;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id) values
(9022,1,280.42,-82.86,-77.12,0),
(9022,2,287.64,-87.01,-76.79,0),
(9022,3,354.63,-64.95,-67.53,902201);