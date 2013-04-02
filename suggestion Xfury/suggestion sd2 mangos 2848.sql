-- Lightning Struck (HoL - heroic)
DELETE FROM achievement_criteria_requirement WHERE criteria_id = 6835 AND type IN (11, 18);
INSERT INTO achievement_criteria_requirement VALUES
(6835, 18, 0, 0);