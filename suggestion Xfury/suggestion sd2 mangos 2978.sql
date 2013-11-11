-- Keepers
UPDATE creature_template SET npcflag=npcflag|1, gossip_menu_id=10335 WHERE entry=33213;
UPDATE creature_template SET npcflag=npcflag|1, gossip_menu_id=10324 WHERE entry=33241;
UPDATE creature_template SET npcflag=npcflag|1, minlevel=83, maxlevel=83, minhealth=14433075, maxhealth=14433075, unit_flags=unit_flags|32768, gossip_menu_id=10336 WHERE entry=33244;
UPDATE creature_template SET npcflag=npcflag|1, gossip_menu_id=10337 WHERE entry=33242;
-- gossip menu
DELETE FROM gossip_menu WHERE entry IN (10337,10336);
INSERT INTO gossip_menu VALUES
(10336, 14334, 0, 0),
(10337, 14333, 0, 0);
-- missing texts
DELETE FROM npc_text WHERE ID IN (14332,14333);
INSERT INTO npc_text (ID,text0_0,text0_1,lang0,prob0) VALUES
(14332,'Mortals, I am indebted to you for freeing me from the terrible corruption that besets this place. Though I have not yet recovered fully, I can help you battle Yogg-Saron.$B$BI can grant you and your friends the Resilience of Nature, increasing your damage and increasing healing taken from spells and effects. In addition, I can conjure Sanity Wells that will allow you to recover your Sanity when your grip on reality falters.','',0,1),
(14333,'Mortals, I am indebted to you for freeing me from the terrible corruption that besets this place. Though I have not yet recovered fully, I can help you battle Yogg-Saron.$B$BI can grant you and your friends the Fury of the Storm, increasing your damage and maximum health. Should you be faced with evil so malevolent that it cannot be destroyed, I can channel all my power into a final Titanic Storm that will destroy even Immortals.','',0,1);
