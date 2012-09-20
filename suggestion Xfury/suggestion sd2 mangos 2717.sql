DELETE FROM creature_linking_template WHERE entry IN (21806);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(21806, 548, 21806, 3, 0);
delete from spell_script_target where entry=37626;
insert into spell_script_target values
(37626,1,21215);