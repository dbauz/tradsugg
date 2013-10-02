UPDATE gameobject_template SET faction=16 WHERE entry=194173;
-- shatter chest visual
DELETE FROM spell_target_position WHERE id=62501;
INSERT INTO spell_target_position VALUES
(62501, 603, 2036.17, -201.843, 432.687, 3.14159);
-- flash freeze visual
DELETE FROM dbscripts_on_event WHERE id=20896;
INSERT INTO dbscripts_on_event (id, command, datalong, buddy_entry, search_radius, data_flags, comments) VALUES
(20896, 15, 62148, 30298, 45, 4, 'Invisible Stalker - Cast Flash Freeze visual');