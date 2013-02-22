DELETE FROM creature_linking_template WHERE entry IN (39899);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(39899, 724, 39751, 4112, 0);

set @text_id = 2000005441;
delete from db_script_string where entry in (@text_id,@text_id+1,@text_id+2,@text_id+3,@text_id+4,@text_id+5,@text_id+6,@text_id+7);
insert into db_script_string (entry, content_default) values
(@text_id, 'Thank you! I could have not held out for much longer. A terrible thing has happened here.'),
(@text_id+1, 'We believed that the Sanctum was well fortified, but we were not prepareted for the nature of this assault.'),
(@text_id+2, 'The Black Dragonkin materialized from thin air, and set upon us before we could react.'),
(@text_id+3, 'We did not stand a chance. As my brethren perished around me, I managed to retreat hear and bar the entrance.'),
(@text_id+4, 'They slaughtered us with cold efficiency, but the true focus of their interest seemed to be the eggs kept here in the sanctum.'),
(@text_id+5, 'The commander of the forces on the ground here is a cruel brute named Zarithrian. But I fear there are greater powers at work.'),
(@text_id+6, 'In their initial assault I caught a glimpse of their true leader, a fearsome full-grown Twilight Dragon.'),
(@text_id+7, 'I know not the extent of their plans heroes, but I know this: they cannot be allowed to succeed!');

UPDATE `db_script_string` SET `content_loc2`='Merci! Je ne pourrais pas pu tenir bon  beaucoup plus longtemps. Une chose épouvantable est arrivée ici.' WHERE `entry`=2000005441;
UPDATE `db_script_string` SET `content_loc2`='Nous avons cru que le Sanctum était bien fortifié, mais nous n\'étions pas preparé à la nature de cette agression.' WHERE `entry`=2000005442;
UPDATE `db_script_string` SET `content_loc2`='Le draconien noir matérialisé dans l\'air mince fondaient sur nous avant que nous puissions réagir.' WHERE `entry`=2000005443;
UPDATE `db_script_string` SET `content_loc2`='Nous n\'avions pas une chance. Comme mes frères ont péri autour de moi, j\'ai réussi à me retirer et barrer l\'entrée.' WHERE `entry`=2000005444;
UPDATE `db_script_string` SET `content_loc2`='Ils nous ont abattus avec une froide efficacité, mais le vrai foyer de leur intérêt a semblé être les œufs gardés ici dans le sanctuaire.' WHERE `entry`=2000005445;
UPDATE `db_script_string` SET `content_loc2`='Le commandant des forces sur la terre est ici une brute cruelle appelée Zarithrian. Mais je crains qu\'il y ait de plus grands pouvoirs au travail.' WHERE `entry`=2000005446;
UPDATE `db_script_string` SET `content_loc2`='Dans leur assaut initial j\'ai entrevu leur vrai chef, un Dragon de Crépuscule adulte effrayant.' WHERE `entry`=2000005447;
UPDATE `db_script_string` SET `content_loc2`='Je sais pas la mesure des plans de leurs héros , mais je le sais : on ne peut pas leur permettre de réussir !' WHERE `entry`=2000005448;


-- Baltharus outro
UPDATE creature_template SET npcflag=npcflag&~2 WHERE entry=40429;
delete from creature_movement_template where entry=40429;
insert into creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id) values
(40429, 1, 3155.54, 342.39, 84.59, 1000, 4042901),
(40429, 2, 3152.32, 359.41, 85.30, 0, 4042902),
(40429, 3, 3152.07, 383.93, 86.33, 1000, 4042903);

delete from dbscripts_on_creature_movement where id in (4042901, 4042902, 4042903);
insert into dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, dataint, comments) values
(4042901, 0, 0, 1, 0, @text_id, 'Xerestrasza first yell text'),
(4042901, 0, 16, 17491, 0, 0, 'Xerestrasza first yell sound'),
(4042902, 0, 0, 0, 0, @text_id+1, 'Xerestrasza second yell text'),
(4042902, 0, 16, 17492, 0, 0, 'Xerestrasza second yell sound'),
(4042903, 0, 32, 1, 0, 0, 'Xerestrasza stop movement'),
(4042903, 0, 0, 0, 0, @text_id+2, 'Xerestrasza third yell text'),
(4042903, 0, 16, 17493, 0, 0, 'Xerestrasza third yell sound'),
(4042903, 0, 1, 1, 0, 0, 'Xerestrasza third yell emote'),
(4042903, 7, 0, 0, 0, @text_id+3, 'Xerestrasza forth yell text'),
(4042903, 7, 16, 17494, 0, 0, 'Xerestrasza forth yell sound'),
(4042903, 7, 1, 1, 0, 0, 'Xerestrasza forth yell emote'),
(4042903, 18, 0, 0, 0, @text_id+4, 'Xerestrasza fifth yell text'),
(4042903, 18, 16, 17495, 0, 0, 'Xerestrasza fifth yell sound'),
(4042903, 18, 1, 1, 0, 0, 'Xerestrasza fifth yell emote'),
(4042903, 28, 0, 0, 0, @text_id+5, 'Xerestrasza sixth yell text'),
(4042903, 28, 16, 17496, 0, 0, 'Xerestrasza sixth yell sound'),
(4042903, 28, 1, 1, 0, 0, 'Xerestrasza sixth yell emote'),
(4042903, 38, 0, 0, 0, @text_id+6, 'Xerestrasza seventh yell text'),
(4042903, 38, 16, 17497, 0, 0, 'Xerestrasza seventh yell sound'),
(4042903, 38, 1, 1, 0, 0, 'Xerestrasza seventh yell emote'),
(4042903, 47, 0, 0, 0, @text_id+7, 'Xerestrasza eigth yell text'),
(4042903, 47, 16, 17498, 0, 0, 'Xerestrasza eigth yell sound'),
(4042903, 47, 1, 1, 0, 0, 'Xerestrasza eigth yell emote'),
(4042903, 54, 29, 2, 1, 0, 'Xerestrasza set quest giver flag');