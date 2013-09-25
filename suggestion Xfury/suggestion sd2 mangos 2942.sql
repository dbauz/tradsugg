-- achievs
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (10284,10722,10286,10099,10290,10133,10285,10095) AND type IN (11,18);
INSERT INTO achievement_criteria_requirement VALUES
(10284,18,0,0),
(10722,18,0,0),
(10286,18,0,0),
(10099,18,0,0),
(10290,18,0,0),
(10133,18,0,0),
(10285,18,0,0),
(10095,18,0,0);