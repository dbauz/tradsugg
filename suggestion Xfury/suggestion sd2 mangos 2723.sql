-- Hydross
DELETE FROM creature WHERE id in (21260,21253);
-- Only one beam found - the other is missing
DELETE FROM creature WHERE id=21933;
INSERT INTO creature (id,map,spawnMask,phaseMask,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,MovementType) VALUES
(21933, 548, 1, 1, -215.7533, -375.3428, 38.40299, 5.009095, 7200, 0, 0);
delete from spell_script_target where entry=38015;
insert into spell_script_target values
(38015,1,21216);
DELETE FROM creature_linking_template WHERE entry IN (22035, 22036);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(22035, 548, 21216, 4112, 0),
(22036, 548, 21216, 4112, 0);
delete from spell_target_position where id=36459;
insert into spell_target_position values
(36459,548,-347.518,-350.367,1.07459,4.48);