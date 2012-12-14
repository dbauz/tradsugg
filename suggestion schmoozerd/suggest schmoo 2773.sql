-- Set proper data
UPDATE gameobject_template SET data1=22968 WHERE entry=187021;
UPDATE gameobject_template SET data1=22797 WHERE entry=186672;
UPDATE gameobject_template SET data1=22790 WHERE entry=186667;
UPDATE gameobject_template SET data1=22699 WHERE entry=186648;

DELETE FROM conditions WHERE condition_entry IN (1001, 1002, 1003, 1004);
INSERT INTO conditions VALUES
(1001, 18, 1, 0), -- hardmode1 (here meaning rescued first)
(1002, 18, 2, 0), -- hardmode2 (here meaning rescued second)
(1003, 18, 3, 0), -- hardmode3 (here meaning rescued third)
(1004, 18, 4, 0); -- hardmode4 (here meaning rescued forth)

-- reference holding the chest's loot.
-- note that there are three groups (corresponding the mode)
-- these groups will be called by filtered reference
DELETE FROM reference_loot_template WHERE entry=29500;
INSERT INTO reference_loot_template VALUES
-- first chest
(29500, 33480, 0, 1, 1, 1, 0), --  'Cord of Braided Troll Hair', 128
(29500, 33805, 0, 1, 1, 1, 0), --  'Shadowhunter's Treads', 128
(29500, 33971, 0, 1, 1, 1, 0), --  'Elunite Imbued Leggings', 128
(29500, 33590, 0, 1, 1, 1, 0), --  'Cloak of Fiends', 128
(29500, 33481, 0, 1, 1, 1, 0), --  'Pauldrons of Stone Resolve', 128
(29500, 33591, 0, 1, 1, 1, 0), --  'Shadowcaster's Drape', 128
(29500, 33483, 0, 1, 1, 1, 0), --  'Life-step Belt', 128
(29500, 33489, 0, 1, 1, 1, 0), --  'Mantle of Ill Intent', 128
-- second chest
(29500, 33495, 0, 2, 1, 1, 0), -- 'Rage', 132
(29500, 33493, 0, 2, 1, 1, 0), -- 'Umbral Shiv', 132
(29500, 33494, 0, 2, 1, 1, 0), -- 'Amani Divining Staff', 132
(29500, 33490, 0, 2, 1, 1, 0), -- 'Staff of Dark Mending', 132
(29500, 33492, 0, 2, 1, 1, 0), -- 'Trollbane', 132
(29500, 33491, 0, 2, 1, 1, 0), -- 'Tuskbreaker', 132
-- third chest
(29500, 33500, 0, 3, 1, 1, 0), -- 'Signet of Eternal Life', 141
(29500, 33496, 0, 3, 1, 1, 0), -- 'Signet of Primal Wrath', 141
(29500, 33497, 0, 3, 1, 1, 0), -- 'Mana Attuned Band', 141
(29500, 33498, 0, 3, 1, 1, 0), -- 'Signet of the Quiet Forest', 141
(29500, 33499, 0, 3, 1, 1, 0); -- 'Signet of the Last Defender', 141

-- chest loot.
-- NOTE
-- each chests loot is called from the reference by filtering the group.
-- the condition refelct the mode
-- the "itemid" has no meaning for references and is just set to a random value
DELETE FROM gameobject_loot_template WHERE entry in (22699, 22790, 22797, 22968);
INSERT INTO gameobject_loot_template VALUES
-- Chest 22699, 186648, 'Tanzar's Trunk' at Bear
(22699, 29434, 100, 0, 1, 1, 0), -- Badge
(22699, 1, 100, 1, -29500, 1, 1001), -- as first chest
(22699, 2, 100, 2, -29500, 1, 1002), -- as second chest
(22699, 3, 100, 3, -29500, 1, 1003), -- as third chest
(22699, 33809, 100, 0, 1, 1, 1004),  -- as forth chest: 'Amani War Bear'
-- Chest 22790, 186667, 'Kraz's Package' at Phoenix
(22790, 29434, 100, 0, 1, 1, 0), -- Badge
(22790, 1, 100, 1, -29500, 1, 1001), -- as first chest
(22790, 2, 100, 2, -29500, 1, 1002), -- as second chest
(22790, 3, 100, 3, -29500, 1, 1003), -- as third chest
(22790, 33809, 100, 0, 1, 1, 1004),  -- as forth chest: 'Amani War Bear'
-- Chest 22797, 186672, 'Ashli's Bag' at Lynx
(22797, 29434, 100, 0, 1, 1, 0), -- Badge
(22797, 1, 100, 1, -29500, 1, 1001), -- as first chest
(22797, 2, 100, 2, -29500, 1, 1002), -- as second chest
(22797, 3, 100, 3, -29500, 1, 1003), -- as third chest
(22797, 33809, 100, 0, 1, 1, 1004),  -- as forth chest: 'Amani War Bear'
-- Chest 22968, 187021, 'Harkor's Satchel' at Eagle
(22968, 29434, 100, 0, 1, 1, 0), -- Badge
(22968, 1, 100, 1, -29500, 1, 1001), -- as first chest
(22968, 2, 100, 2, -29500, 1, 1002), -- as second chest
(22968, 3, 100, 3, -29500, 1, 1003), -- as third chest
(22968, 33809, 100, 0, 1, 1, 1004);  -- as forth chest: 'Amani War Bear'