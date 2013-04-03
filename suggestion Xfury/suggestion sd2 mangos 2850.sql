-- 4 horsemen 10 & 25 man
DELETE FROM achievement_criteria_requirement WHERE criteria_id = 7192;
INSERT INTO achievement_criteria_requirement VALUES
(7192, 12, 0, 0);
DELETE FROM achievement_criteria_requirement WHERE criteria_id = 7193;
INSERT INTO achievement_criteria_requirement VALUES
(7193, 12, 1, 0);
-- 4 horsemen - fall together 10 & 25 man
DELETE FROM achievement_criteria_requirement WHERE criteria_id = 7600;
INSERT INTO achievement_criteria_requirement VALUES
(7600, 12, 0, 0),
(7600, 18, 0, 0);
DELETE FROM achievement_criteria_requirement WHERE criteria_id = 7601;
INSERT INTO achievement_criteria_requirement VALUES
(7601, 12, 1, 0),
(7601, 18, 0, 0);
-- Ulduar - assembly of iron
DELETE FROM achievement_criteria_requirement WHERE criteria_id = 10578;
INSERT INTO achievement_criteria_requirement VALUES
(10578, 12, 0, 0);
DELETE FROM achievement_criteria_requirement WHERE criteria_id = 10579;
INSERT INTO achievement_criteria_requirement VALUES
(10579, 12, 1, 0);