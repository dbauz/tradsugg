-- Tailor (by Neatelves)
-- Conditions (start condition entry from 921) - updated for UDB
DELETE FROM conditions WHERE condition_entry IN (921,922,923,924,925,926,927,928,929,930,931,932,933,934,935,936,937,938,939,940);
INSERT INTO conditions VALUES
(921, 29, 197, 1), -- has no tailor skill
(922, 17, 26797, 0), -- has spellfire tailor
(923, 17, 26798, 0), -- has mooncloth tailor
(924, 17, 26801, 0), -- has shadoweave tailor
(925, 8, 10832, 0), -- awarded quest Spellfire Tailor
(926, 8, 10831, 0), -- awarded quest Mooncloth Tailor
(927, 8, 10833, 0), -- awarded quest Shadoweave Tailor
(928, 7, 197, 350), -- has tailor of min 350
(929, 15, 60, 1), -- has at least lvl 60
(930, -2, 925, 926), -- Spellfire tailor OR Mooncloth tailor quests awarded
(931, -2, 927, 903), -- Spellfire tailor OR Mooncloth tailor OR Shadoweave quests awarded
(932, -1, 928, 929), -- has tailor of 350 AND lvl 60
(933, -1, 931, 932), -- (tailor of 350 AND lvl 60) AND (any tailor quests awarded)
(934, -2, 922, 923), -- has spellfire tailor spell OR mooncloth tailor spell
(935, -2, 924, 934), -- has spellfire tailor spell OR mooncloth tailor spell OR shadoweave tailor spell
(936, -3, 935, 0), -- has NOT (spellfire tailor spell OR mooncloth tailor spell OR shadoweave tailor spell)
(937, -1, 933, 936), -- has (level AND skill AND quests) AND (has NOT tailor spells)
(938, -1, 922, 933), -- has (level AND skill AND quests) AND has spellfire tailor
(939, -1, 923, 933), -- has (level AND skill AND quests) AND has mooncloth tailor
(940, -1, 924, 933); -- has (level AND skill AND quests) AND has shadoweave tailor

-- gossip menus
DELETE FROM gossip_menu WHERE entry IN (8530,8531,8532);
INSERT INTO gossip_menu VALUES
(8530, 10669, 0, 0),
(8530, 10670, 0, 921),
(8531, 10671, 0, 0),
(8531, 10672, 0, 921),
(8532, 10673, 0, 0),
(8532, 10674, 0, 921);

-- gossip menu options
DELETE FROM gossip_menu_option WHERE menu_id IN (8530,8531,8532);
REPLACE INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(8530, 0, 1, 'Show me what you have for sale.', 3, 128, 0, 0, 0, 0, 0, NULL, 0),
(8530, 1, 0, 'Please teach me how to become a Mooncloth tailoring.', 1, 1, -1, 0, 853001, 0, 0, NULL, 937),
(8530, 2, 0, 'I wish to unlearn Mooncloth Tailoring.', 1, 1, -1, 0, 853002, 0, 1500000, 'Do you really want to unlearn your tailoring specialty and lose all associated recipes?', 939),
(8531, 0, 1, 'Show me what you have for sale.', 3, 128, 0, 0, 0, 0, 0, NULL, 0),
(8531, 1, 0, 'Please teach me how to become a Spellfire tailoring.', 1, 1, -1, 0, 853101, 0, 0, NULL, 937),
(8531, 2, 0, 'I wish to unlearn Spellfire Tailoring.', 1, 1, -1, 0, 853102, 0, 1500000, 'Do you really want to unlearn your tailoring specialty and lose all associated recipes?', 938),
(8532, 0, 1, 'Show me what you have for sale.', 3, 128, 0, 0, 0, 0, 0, NULL, 0),
(8532, 1, 0, 'Please teach me how to become a Shadoweave tailoring.', 1, 1, -1, 0, 853201, 0, 0, NULL, 937),
(8532, 2, 0, 'I wish to unlearn Shadoweave Tailoring.', 1, 1, -1, 0, 853202, 0, 1500000, 'Do you really want to unlearn your tailoring specialty and lose all associated recipes?', 940);

-- gossip scripts
DELETE FROM dbscripts_on_gossip WHERE id IN (853101,853102,853001,853002,853201,853202);
INSERT INTO dbscripts_on_gossip (id,delay,command,datalong,comments) VALUES
(853101, 0, 15, 26796, 'cast Spellfire Tailoring'),
(853001, 0, 15, 26799, 'cast Mooncloth Tailoring'),
(853201, 0, 15, 26800, 'cast Shadoweave Tailoring'),
(853102, 0, 15, 41299, 'cast Unlearn Spellfire Tailoring'),
(853002, 0, 15, 41558, 'cast Unlearn Mooncloth Tailoring'),
(853202, 0, 15, 41559, 'cast Unlearn Shadoweave Tailoring');