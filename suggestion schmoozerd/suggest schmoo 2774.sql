DELETE FROM conditions WHERE condition_entry IN (1000, 1001, 1002, 1003, 1004, 1005, 1006);
INSERT INTO conditions VALUES
(1000, 18, 0, 0),
(1001, 18, 1, 0),
(1002, 18, 2, 0),
(1003, 18, 3, 0),
(1004, 18, 4, 0),
(1005, -2, 1002, 1003), -- hardmode 2 OR hardmode 3
(1006, -2, 1005, 1001); -- hardmode (2 OR 3) OR hardmode 1

-- Sartharion special loot, 10m
DELETE FROM creature_loot_template WHERE entry=28860 AND groupid IN (5, 6, 7);
INSERT INTO creature_loot_template VALUES
-- at least 1 drake
(28860, 43990, 0, 5, 1, 1, 1006),
(28860, 43988, 0, 5, 1, 1, 1006),
(28860, 43991, 0, 5, 1, 1, 1006),
(28860, 43989, 0, 5, 1, 1, 1006),
(28860, 43992, 0, 5, 1, 1, 1006),
-- at least 2 drakes
(28860, 43995, 0, 6, 1, 1, 1005),
(28860, 43998, 0, 6, 1, 1, 1005),
(28860, 43994, 0, 6, 1, 1, 1005),
(28860, 43996, 0, 6, 1, 1, 1005),
(28860, 43993, 0, 6, 1, 1, 1005),
-- 3 drakes
(28860, 43986, 0, 7, 1, 1, 1003);

-- Sartharion special loot, 25m
DELETE FROM creature_loot_template WHERE entry=31311 AND groupid IN (5, 6, 7);
INSERT INTO creature_loot_template VALUES
-- at least 1 drake
(31311, 44004, 0, 5, 1, 1, 1006),
(31311, 44000, 0, 5, 1, 1, 1006),
(31311, 44002, 0, 5, 1, 1, 1006),
(31311, 44003, 0, 5, 1, 1, 1006),
-- at least 2 drakes
(31311, 44007, 0, 6, 1, 1, 1005),
(31311, 44006, 0, 6, 1, 1, 1005),
(31311, 44005, 0, 6, 1, 1, 1005),
(31311, 44011, 0, 6, 1, 1, 1005),
(31311, 44008, 0, 6, 1, 1, 1005),
-- 3 drakes
(31311, 43954, 0, 7, 1, 1, 1003);