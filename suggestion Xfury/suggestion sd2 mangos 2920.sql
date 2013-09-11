DELETE FROM creature_linking_template WHERE entry IN (30858,31219,30688,31218,30882,31204,30890,31214,31138);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(30858, 615, 30449, 4096, 0),
(30688, 615, 30451, 4096, 0),
(30882, 615, 30452, 4112, 0),
(30890, 615, 30452, 4096, 0),
(31138, 615, 30452, 4096, 0),
(31219, 615, 28860, 4096, 0),
(31218, 615, 28860, 4096, 0),
(31204, 615, 28860, 4096, 0),
(31214, 615, 28860, 4096, 0);
DELETE FROM spell_script_target WHERE entry IN (58793);
INSERT INTO spell_script_target VALUES
(58793, 1, 30882, 0),
(58793, 1, 31204, 0);