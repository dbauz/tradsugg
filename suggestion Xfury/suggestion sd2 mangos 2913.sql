-- Sunwell
DELETE FROM creature_template_addon WHERE entry=24895;
UPDATE creature_template SET minlevel=74, maxlevel=74, minhealth=424900, armor=7857, mindmg=226, maxdmg=339, InhabitType=InhabitType|4, RegenHealth=0 WHERE entry=24895;
UPDATE creature_template SET faction_A=14, faction_H=14, unit_flags=unit_flags|33554432, minlevel=70, maxlevel=70, minhealth=4890, maxhealth=4890 WHERE entry=25879;
UPDATE creature_template SET faction_A=14, faction_H=14, minhealth=2835, maxhealth=2835 WHERE entry=25855;
UPDATE creature_template SET minlevel=70, maxlevel=70, unit_flags=unit_flags|33555200, minhealth=6986, maxhealth=6986 WHERE entry=26262;
UPDATE creature_template SET minlevel=70, maxlevel=70, faction_A=16, faction_H=16, unit_flags=unit_flags|33587200, minhealth=97804, maxhealth=97804 WHERE entry=25653;
UPDATE creature_template SET faction_A=16, faction_H=16, unit_flags=unit_flags|32832, minlevel=70, maxlevel=70, minhealth=78246, maxhealth=78246, minmana=78875, maxmana=78875 WHERE entry=25708;
UPDATE creature_template SET minlevel=73, maxlevel=73, minhealth=1805825, maxhealth=1805825, minmana=1693500, maxmana=1693500, unit_flags=unit_flags|32832 WHERE entry=25319;
UPDATE creature_template SET minhealth=42, maxhealth=42, unit_flags=unit_flags|33555200 WHERE entry=26254;
UPDATE creature_template SET minlevel=70, maxlevel=70, minhealth=3912160, maxhealth=3912160, faction_A=114, faction_H=114, unit_flags=unit_flags|33555200 WHERE entry=25703;
UPDATE creature_template SET faction_A=1959, faction_H=1959, unit_flags=unit_flags|32832 WHERE entry=24892;
UPDATE creature_template SET faction_A=1770, faction_H=1770, unit_flags=32832 WHERE entry=24891;
DELETE FROM spell_script_target WHERE entry IN (44844,44884,45666,44845);
INSERT INTO spell_script_target VALUES
(44844, 1, 24895, 0),
(44884, 1, 24895, 0),
(45666, 1, 25315, 0),
(44845, 1, 24892, 0),
(44845, 1, 24891, 0),
(44845, 1, 24850, 0);
-- doors
DELETE FROM spell_script_target WHERE entry IN (46609,46610,46637,46650,46652,46638);
INSERT INTO spell_script_target VALUES
(46609, 0, 19871, 0),
(46610, 0, 188119, 0),
(46637, 1, 19871, 0),
(46650, 1, 23472, 0),
(46652, 0, 188075, 0),
(46638, 0, 188119, 0);
DELETE FROM dbscripts_on_spell WHERE id IN (46650,46609);
INSERT INTO dbscripts_on_spell (id,command,datalong,data_flags,comments) VALUES
(46609,15,46610,8,'Cast Freeze on Ice Barrier'),
(46650,15,46652,8,'Cast Open Brutallus Back Door on Fire Barrier');
-- tele spells
DELETE FROM spell_target_position WHERE id IN (46020,46019);
INSERT INTO spell_target_position VALUES
(46020, 580, 1690.339, 942.1176, 53.07742, 0),
(46019, 580, 1696.196, 951.1885, -74.55846, 0);

-- fix some bad locations
UPDATE gameobject SET position_x=1746.565, position_y=621.9134, position_z=28.05021, orientation=2.984498 WHERE id=187869;
UPDATE gameobject SET position_x=1704.303, position_y=582.6811, position_z=28.16483, orientation=1.605702 WHERE id=188114;
UPDATE gameobject SET position_x=1651.921, position_y=635.3501, position_z=28.12865, orientation=6.19592 WHERE id=188115;
UPDATE gameobject SET position_x=1696.155, position_y=674.9676, position_z=28.05021, orientation=4.81711 WHERE id=188116;
UPDATE creature SET position_x=1696.01, position_y=675.3926, position_z=28.13354, orientation=0.6108652 WHERE guid=140022;
UPDATE creature SET position_x=1704.316, position_y=582.7225, position_z=28.25068, orientation=5.009095 WHERE guid=140020;
UPDATE creature SET position_x=1652.034, position_y=635.3538, position_z=28.20865, orientation=3.752458 WHERE guid=140023;
UPDATE creature SET position_x=1746.551, position_y=621.9463, position_z=28.13354, orientation=2.094395 WHERE guid=140021;
UPDATE creature SET position_x=1698.092, position_y=627.2899, position_z=58.17708, orientation=1.692969 WHERE id=26046;
UPDATE creature SET position_x=1699.906, position_y=929.0208, position_z=-74.28365, orientation=6.161012 WHERE id=24892;

