delete from spell_script_target where entry=52850;
insert into spell_script_target values
(52850,1,23872);
DELETE FROM creature_linking_template WHERE entry IN (26776, 26764, 26822);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(26776, 230, 23872, 4112, 0),
(26764, 230, 23872, 4112, 0),
(26822, 230, 23872, 4112, 0);
DELETE FROM creature_template_addon WHERE (entry=26764);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(26764, 0, 0, 1, 0, 0, 0, '47759 47760');