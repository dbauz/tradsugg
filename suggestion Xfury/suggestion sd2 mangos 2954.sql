DELETE FROM creature_linking_template WHERE entry IN (32885,32883,32872,32873,32882);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(32885, 603, 32908, 3, 0),
(32883, 603, 32907, 3, 0),
(32872, 603, 32865, 4, 0),
(32873, 603, 32865, 4, 0),
(32882, 603, 32865, 4, 0);
DELETE FROM spell_script_target WHERE entry IN (64098,62278,62565);
INSERT INTO spell_script_target VALUES
(64098, 1, 32865, 0),
(62278, 1, 32865, 0),
(62976, 1, 33378, 0),
(62565, 1, 32865, 0);
UPDATE creature SET MovementType=0 WHERE id=32865;