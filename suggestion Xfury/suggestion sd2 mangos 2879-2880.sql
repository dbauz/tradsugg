DELETE FROM achievement_criteria_requirement WHERE type IN (11, 18) AND criteria_id IN (7326,7327);
INSERT INTO achievement_criteria_requirement VALUES
(7326, 18, 0, 0),
(7327, 18, 0, 0);
DELETE FROM `creature` WHERE `id`=15989;