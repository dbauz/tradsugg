-- Council
delete from spell_script_target where entry=41455;
insert into spell_script_target values
(41455, 1, 22949),
(41455, 1, 22950),
(41455, 1, 22951),
(41455, 1, 22952);
delete from spell_script_target where entry=41499;
insert into spell_script_target values
(41499, 1, 22949),
(41499, 1, 22950),
(41499, 1, 22951),
(41499, 1, 22952);
delete from spell_script_target where entry=41333;
insert into spell_script_target values
(41333, 1, 22949),
(41333, 1, 22950),
(41333, 1, 22951),
(41333, 1, 22952);
delete from spell_script_target where entry=41342;
insert into spell_script_target values
(41342, 1, 23426);
DELETE FROM creature_linking_template WHERE entry IN (22951, 22950, 22952);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(22951, 564, 22949, 143, 0),
(22950, 564, 22949, 143, 0),
(22952, 564, 22949, 143, 0);