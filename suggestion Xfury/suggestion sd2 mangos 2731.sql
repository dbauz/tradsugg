UPDATE creature SET MovementType=0 WHERE id=17376;
DELETE FROM creature_linking_template WHERE entry IN (17256, 17454);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(17256, 544, 17256, 15, 0),
(17454, 544, 17256, 4112, 0);
delete from spell_script_target where entry in (30531,30541,30657,30572);
insert into spell_script_target values
(30531,1,17256),
(30657,1,17474),
(30572,1,17474),
(30541,1,17474);
-- target entry for Blood Furnace Magtheridon
delete from spell_script_target where entry=30207 and targetEntry=21174;
insert into spell_script_target values
(30207,1,21174);
-- from ytdb
DELETE FROM creature WHERE id=17474;
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(17474, 544, 1, 1, 0, 0, 13.1331, 2.75793, -0.312492, 0.264242, 300, 0, 0, 1, 0, 0, 0),
(17474, 544, 1, 1, 0, 0, -12.1116, 1.01105, -0.303638, 6.08346, 300, 0, 0, 1, 0, 0, 0),
(17474, 544, 1, 1, 0, 0, -11.3749, -29.1214, -0.312463, 4.99445, 300, 0, 0, 1, 0, 0, 0),
(17474, 544, 1, 1, 0, 0, -7.10759, 25.524, -0.312497, 5.1917, 300, 0, 0, 1, 0, 0, 0),
(17474, 544, 1, 1, 0, 0, -3.11093, 29.1424, -0.31249, 5.67216, 300, 0, 0, 1, 0, 0, 0),
(17474, 544, 1, 1, 0, 0, -37.1834, -19.4914, -0.312451, 5.05616, 300, 0, 0, 1, 0, 0, 0),
(17474, 544, 1, 1, 0, 0, -29.691, 29.643, -0.034676, 0.478655, 300, 0, 0, 1, 0, 0, 0);