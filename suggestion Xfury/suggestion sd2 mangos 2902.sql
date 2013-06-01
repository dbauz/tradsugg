-- Apexis quests
-- data from ytdb
DELETE FROM gossip_menu WHERE entry IN (8703,8704);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8703, 10948, 0, 0),
(8704, 10949, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id IN (8703,8704);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(8703, 0, 0, 'Insert an Apexis Shard, and begin!', 1, 1, -1, 0, 870301, 0, 0, NULL, 885),
(8704, 0, 0, 'Insert 35 Apexis Shards, and begin!', 1, 1, -1, 0, 870401, 0, 0, NULL, 886);
-- gossip stuff
DELETE FROM dbscripts_on_gossip WHERE id IN (870301,870401);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, data_flags, comments) VALUES
(870301, 0, 15, 40502, 0x02, 'cast Simon Game - Create Bunny'),
(870301, 1, 15, 41137, 0x02, 'cast Simon Game, begin game, solo'),
(870401, 0, 15, 40502, 0x02, 'cast Simon Game - Create Bunny'),
(870401, 1, 15, 41139, 0x02, 'cast Simon Game, begin game, group');
-- conditions
DELETE FROM conditions WHERE condition_entry IN (880,881,882,883,884,885,886);
INSERT INTO conditions VALUES
(880, 9, 11058, 0), -- quest 11058 active
(881, 9, 11080, 0), -- quest 11080 (daily) active
(882, 2, 32569, 1), -- one item 32569
(883, 2, 32569, 35), -- 35 items 32569
(884, -2, 880, 881), -- quest 11058 or quest 11080
(885, -1, 884, 882), -- quests and one apexis
(886, -1, 884, 883); -- quests and 35 apexis
-- script targets Npcs
delete from spell_script_target where entry IN (39993,40055,40165,40166,40167);
insert into spell_script_target values
(39993, 1, 22923, 0),
(40055, 1, 22923, 0),
(40165, 1, 22923, 0),
(40166, 1, 22923, 0),
(40167, 1, 22923, 0);
-- script targets GOs (only a few cluster nodes)
delete from spell_script_target where entry IN (40176,40281,40177,40287,40178,40288,40179,40289,40512,40494,41124,
40246,40169,40170,40171,40172,40247,40245,40244,40283,40284,40285,40286,40437,40495,40499,41110,41111,41112,41113);
insert into spell_script_target values
-- ***** General stuff *****
-- decharger and other spells
(40512, 0, 185894, 0), -- game core (decharger) lock
(40499, 0, 185894, 0), -- game core (decharger) unlock
(40512, 0, 185945, 0), -- game core large (decharger) lock
(40499, 0, 185945, 0), -- game core large (decharger) unlock
(41124, 0, 185945, 0), -- game core large (decharger) summon
(40437, 0, 185894, 0), -- game failed spell
(40437, 0, 185945, 0), -- game failed spell large
(40494, 0, 185890, 0), -- relic lock
(40495, 0, 185894, 2), -- decharger lock
(40495, 0, 185890, 1), -- relick unlock
(40494, 0, 185944, 0), -- relic lock large
(40495, 0, 185945, 2), -- decharger lock large
(40495, 0, 185944, 1), -- relick unlock large
-- visual aura despawn spells (only 1 go entry)
(40172, 0, 185875, 3), -- yellow
(40171, 0, 185873, 3), -- green
(40170, 0, 185872, 3), -- blue
(40169, 0, 185874, 3), -- red
(40172, 0, 185951, 3), -- yellow large
(40171, 0, 185949, 3), -- green large
(40170, 0, 185948, 3), -- blue large
(40169, 0, 185950, 3), -- red large

-- ***** Small Cluster 1 *****
-- pre game setup spells
(40176, 0, 185836, 0), -- blue
(40177, 0, 185838, 0), -- green
(40178, 0, 185839, 0), -- red
(40179, 0, 185837, 0), -- yellow
-- visual auras coords
(40281, 0, 185836, 0), -- blue
(40287, 0, 185838, 0), -- green
(40288, 0, 185839, 0), -- red
(40289, 0, 185837, 0), -- yellow
-- visual button push spells
(40244, 0, 185836, 0), -- blue
(40245, 0, 185838, 0), -- green
(40246, 0, 185839, 0), -- red
(40247, 0, 185837, 0), -- yellow
-- cluster unlock spells
(40172, 0, 185837, 4), -- yellow
(40171, 0, 185838, 4), -- green
(40170, 0, 185836, 4), -- blue
(40169, 0, 185839, 4), -- red
-- cluster lock spells
(40286, 0, 185837, 0), -- yellow
(40284, 0, 185838, 0), -- green
(40283, 0, 185836, 0), -- blue
(40285, 0, 185839, 0), -- red

-- ***** Small Cluster 2 *****
-- pre game setup spells
(40176, 0, 185832, 0), -- blue
(40177, 0, 185834, 0), -- green
(40178, 0, 185835, 0), -- red
(40179, 0, 185833, 0), -- yellow
-- visual auras coords
(40281, 0, 185832, 0), -- blue
(40287, 0, 185834, 0), -- green
(40288, 0, 185835, 0), -- red
(40289, 0, 185833, 0), -- yellow
-- visual button push spells
(40244, 0, 185832, 0), -- blue
(40245, 0, 185834, 0), -- green
(40246, 0, 185835, 0), -- red
(40247, 0, 185833, 0), -- yellow
-- cluster unlock spells
(40172, 0, 185833, 4), -- yellow
(40171, 0, 185834, 4), -- green
(40170, 0, 185832, 4), -- blue
(40169, 0, 185835, 4), -- red
-- cluster lock spells
(40286, 0, 185833, 0), -- yellow
(40284, 0, 185834, 0), -- green
(40283, 0, 185832, 0), -- blue
(40285, 0, 185835, 0), -- red

-- ***** Large Cluster 1 *****
-- pre game and visual auras setup spells
(41113, 0, 185844, 0), -- blue
(41112, 0, 185846, 0), -- green
(41111, 0, 185845, 0), -- red
(41110, 0, 185847, 0), -- yellow
-- visual button push spells
(40244, 0, 185844, 0), -- blue
(40245, 0, 185846, 0), -- green
(40246, 0, 185845, 0), -- red
(40247, 0, 185847, 0), -- yellow
-- cluster unlock spells
(40172, 0, 185847, 4), -- yellow
(40171, 0, 185846, 4), -- green
(40170, 0, 185844, 4), -- blue
(40169, 0, 185845, 4), -- red
-- cluster lock spells
(40286, 0, 185847, 0), -- yellow
(40284, 0, 185846, 0), -- green
(40283, 0, 185844, 0), -- blue
(40285, 0, 185845, 0); -- red