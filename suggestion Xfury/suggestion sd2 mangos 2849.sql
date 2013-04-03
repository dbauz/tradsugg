-- Don't look up (PoS - heroic)
DELETE FROM achievement_criteria_requirement WHERE criteria_id = 12994;
INSERT INTO achievement_criteria_requirement VALUES
(12994, 12, 1, 0),
(12994, 18, 0, 0);
-- Brann spankin
DELETE FROM achievement_criteria_requirement WHERE criteria_id = 7590;
INSERT INTO achievement_criteria_requirement VALUES
(7590, 12, 1, 0),
(7590, 18, 0, 0);