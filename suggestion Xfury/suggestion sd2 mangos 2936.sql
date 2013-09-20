-- vehicle conditions
-- will make the spell click available only when gauntlet event is in progress
DELETE FROM conditions WHERE condition_entry=920;
INSERT INTO conditions VALUES
(920, 18, 33113, 0);
UPDATE npc_spellclick_spells SET condition_id=920 WHERE npc_entry IN (33060,33062,33109,33067,33167,34045);
-- achievs
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (10056,10061,10057,10059,10058,10060,10218,10219,10054,10055) AND type IN (11,18);
INSERT INTO achievement_criteria_requirement VALUES
(10056,18,0,0),
(10061,18,0,0),
(10057,18,0,0),
(10059,18,0,0),
(10058,18,0,0),
(10060,18,0,0),
(10218,18,0,0),
(10219,18,0,0),
(10054,18,0,0),
(10055,18,0,0);