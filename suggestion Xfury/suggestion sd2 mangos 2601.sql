-- Npc flag is set by script; Fix horse faction; Npc should be mounted when spawned
update creature_template set npcflag=npcflag&~2 where entry=12580;
DELETE FROM creature_template_addon WHERE (entry=12580);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES (12580, 2410, 0, 0, 0, 0, 0, '');
UPDATE creature_template SET faction_A = 12, faction_H = 12 WHERE entry = 12581;