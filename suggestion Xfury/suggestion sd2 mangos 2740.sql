DELETE FROM creature_linking_template WHERE entry IN (23215, 23216, 23523, 23318, 23524);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(23215, 564, 22841, 4112, 0),
(23216, 564, 22841, 4112, 0),
(23523, 564, 22841, 4112, 0),
(23318, 564, 22841, 4112, 0),
(23524, 564, 22841, 4112, 0);
UPDATE creature SET MovementType=0 WHERE id=23210;