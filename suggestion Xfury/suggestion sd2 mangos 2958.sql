-- fix npcs falling through map
UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry=33378;
-- missing spawns
DELETE FROM creature WHERE guid IN (151040);
INSERT INTO creature VALUES
(151040, 34055, 603, 3, 1, 0, 0, 2134.883, -263.6244, 442.0274, 0, 7200, 0, 0, 17010, 0, 0, 0);
-- more script targets
DELETE FROM spell_script_target WHERE entry IN (64098,62278,62976,62565,64767,63238,62016,62577,62603,62466);
INSERT INTO spell_script_target VALUES
(64098, 1, 32865, 0),
(62278, 1, 32865, 0),
(62976, 1, 33378, 0),
(62565, 1, 32865, 0),
(64767, 1, 33196, 0),
(63238, 1, 33378, 0),
(62016, 1, 33378, 0),
(62577, 1, 32892, 0),
-- (62466, 1, 32780, 0), -- keep for reference for the moment when Cone targets will support script target
(62603, 1, 32892, 0);