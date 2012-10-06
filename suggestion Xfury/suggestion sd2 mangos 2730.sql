DELETE FROM creature WHERE id=19870;
INSERT INTO creature (id,map,spawnMask,phaseMask,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,MovementType) VALUES
(19870, 548, 1, 1, 49.626, -902.181, 41.54, 3.956, 7200, 0, 0),
(19870, 548, 1, 1, 10.988, -901.616, 41.54, 5.437, 7200, 0, 0),
(19870, 548, 1, 1, 10.385, -944.036, 41.54, 0.779, 7200, 0, 0),
(19870, 548, 1, 1, 49.312, -943.398, 41.54, 2.401, 7200, 0, 0);
DELETE FROM creature_linking_template WHERE entry IN (21958, 22009, 22056, 22055, 22140);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(21958, 548, 21212, 4096, 0),
(22009, 548, 21212, 4096, 0),
(22056, 548, 21212, 4096, 0),
(22055, 548, 21212, 4096, 0),
(22140, 548, 21212, 4096, 0);