DELETE FROM creature WHERE id=14494;
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(14494, 0, 1, 1, 0, 0, 3325.018, -2996.802, 164.449, 0.01, 600, 0, 0, 3052, 0, 0, 0);
-- The peasants should have regenHealth = 0. Also the walk speed should be decreased!
UPDATE creature_template SET RegenHealth = 0 WHERE entry IN (14484,14485);