DELETE FROM creature_linking_template WHERE entry IN (28166);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(28166, 578, 27654, 4112, 0);
DELETE FROM db_script_string WHERE entry BETWEEN 2000005511 AND 2000005514;
INSERT INTO db_script_string (entry, content_default) VALUES
(2000005511, 'Thank you for freeing us, mortals. Beware, the Blue Flight is alerted to your presence. Even now, Malygos sends Varos Cloudstrider and his ring guardians to defend the Oculus. You will need our help to stand a chance.'),
(2000005512, 'Intruders, your victory will be short-lived. I am Commander Varos Cloudstrider. My drakes control the skies and protect this conduit. I will see to it personally that the Oculus does not fall into your hands!'),
(2000005513, 'The trickster Mage-Lord Urom protects the third ring. He will appear alone and defenseless, but do not be fooled by appearances! Urom is a powerful conjurer who commands a menagerie of Phantasmal creatures. Seek him out above.'),
(2000005514, 'Your greatest challenge lies ahead. Ley-Guardian Eregos is a Blue dragon of immense power. You will find him flying above the uppermost ring.');
UPDATE `db_script_string` SET `content_loc2` = 'Nous vous remercions de nous libérer, mortels. Attention, le vol bleu est averti de votre présence. Même maintenant, Malygos envoie Varos hache et ses gardiens de l\'anneau pour défendre l\'Oculus. Vous aurez besoin de notre aide pour avoir une chance.' WHERE `entry` = 2000005511;
UPDATE `db_script_string` SET `content_loc2` = 'Intrus, votre victoire sera de courte durée. Je suis le commandant Varos Cloudstrider. Mes dragons contrôlent le ciel et protègent cette conduite. Je vais voir avrc lui personnellement que l\'Oculus ne tombe pas dans vos mains !' WHERE `entry` = 2000005512;
UPDATE `db_script_string` SET `content_loc2` = 'Le trickster Seigneur-mage Urom protège le troisième anneau. Il apparaîtra seul et sans défense, mais ne vous fiez aux apparences! Urom est un prestidigitateur puissant qui commande une ménagerie de créatures fantomatiques. Cherchez-le ci-dessus' WHERE `entry` = 2000005513;
UPDATE `db_script_string` SET `content_loc2` = 'Votre plus grand défi vous attend. Gardien-tellurique Eregos est un dragon bleu au pouvoir immense. Vous le trouverez il vole au-dessus de la bague supérieure.' WHERE `entry` = 2000005514;

DELETE FROM dbscripts_on_creature_death WHERE id=27654;
INSERT INTO dbscripts_on_creature_death(id, delay, command, datalong, datalong2, buddy_entry, search_radius, dataint, x, y, z, comments) VALUES
(27654, 6, 3, 0, 0, 27658, 75, 0, 939.73, 1044.25, 359.96, 'Belgaristrasz - move out of the cage'),
(27654, 6, 3, 0, 0, 27657, 75, 0, 948.57, 1032.11, 359.96, 'Verdisa - move out of the cage'),
(27654, 6, 3, 0, 0, 27659, 75, 0, 941.93, 1060.08, 359.96, 'Eternos - move out of the cage'),
(27654, 9, 0, 0, 0, 27658, 75, 2000005511, 0, 0, 0, 'Belgaristrasz - say greet'),
(27654, 9, 1, 1, 0, 27658, 75, 0, 0, 0, 0, 'Belgaristrasz - emote greet'),
(27654, 17, 0, 6, 0, 27447, 360, 2000005512, 0, 0, 0, 'Varos - yell intro, map wide'),
(27654, 17, 16, 13648, 8, 27447, 360, 0, 0, 0, 0, 'Varos - yell intro sound, map wide');
DELETE FROM dbscripts_on_creature_death WHERE id=27447;
INSERT INTO dbscripts_on_creature_death(id, delay, command, datalong, datalong2, buddy_entry, search_radius, dataint, x, y, z, o, comments) VALUES
(27447, 3, 10, 28012, 180000, 0, 0, 0, 1256.10, 1066.52, 439.43, 0.18, 'Summon Image of Belgaristrasz'),
(27447, 4, 15, 51347, 0, 28012, 75, 0, 0, 0, 0, 0, 'Image of Belgaristrasz - cast teleport visual'),
(27447, 7, 0, 0, 0, 28012, 75, 2000005513, 0, 0, 0, 0, 'Image of Belgaristrasz - say after Varos'),
(27447, 7, 1, 1, 0, 28012, 75, 0, 0, 0, 0, 0, 'Image of Belgaristrasz - emote after Varos');
DELETE FROM dbscripts_on_creature_death WHERE id=27655;
INSERT INTO dbscripts_on_creature_death(id, delay, command, datalong, datalong2, buddy_entry, search_radius, dataint, x, y, z, o, comments) VALUES
(27655, 3, 10, 28012, 180000, 0, 0, 0, 1116.11, 1075.17, 508.349, 0, 'Summon Image of Belgaristrasz'),
(27655, 4, 15, 51347, 0, 28012, 75, 0, 0, 0, 0, 0, 'Image of Belgaristrasz - cast teleport visual'),
(27655, 7, 0, 0, 0, 28012, 75, 2000005514, 0, 0, 0, 0, 'Image of Belgaristrasz - say after Urom'),
(27655, 7, 1, 1, 0, 28012, 75, 0, 0, 0, 0, 0, 'Image of Belgaristrasz - emote after Urom');