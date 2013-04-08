-- A simple defend quest
-- Quest 1090 "Gerenzo's Orders"
-- Overview (Details are not too clear)
-- Summons 3 waves of mobs: 2x3998+1x4001 -- 2x4002+2x4003+1x4004 -- 3x4001+1x4004
UPDATE quest_template SET StartScript=entry WHERE entry=1090;
DELETE FROM dbscripts_on_quest_start WHERE id=1090;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, x, y, z, o, comments) VALUES
-- (1090, 0, C, d, d2, 0, 0, 0, 'change npc-flags on quest-accept'),
-- (1090, 0, C, d, d2, 0, 0, 0, 'change faction on quest-accept'),
-- First wave
(1090, 60, 10, 3998, 540000, 938.30, -257.35, -2.22, 0, 'summon first wave'),
(1090, 60, 10, 3998, 540000, 942.28, -254.49, -2.38, 0, 'summon first wave'),
(1090, 60, 10, 4001, 540000, 938.52, -253.20, -2.08, 0, 'summon first wave'),

(1090, 149, 34, 2666, 1090, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(1090, 149, 34, 2667, 1090, 0, 0, 0, 0, 'Stop script if npc is dead'),

(1090, 150, 10, 4002, 450000, 938.30, -257.35, -2.22, 0, 'summon second wave'), -- 938.30 -257.35 -2.22
(1090, 150, 10, 4002, 450000, 942.28, -254.49, -2.38, 0, 'summon second wave'),
(1090, 150, 10, 4003, 450000, 938.52, -253.20, -2.08, 0, 'summon second wave'),
(1090, 150, 10, 4003, 450000, 939.51, -253.11, -2.02, 0, 'summon second wave'),
(1090, 150, 10, 4004, 450000, 938.30, -257.35, -2.22, 0, 'summon second wave'),

(1090, 239, 34, 2666, 1090, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(1090, 239, 34, 2667, 1090, 0, 0, 0, 0, 'Stop script if npc is dead'),
(1090, 240, 10, 4001, 360000, 938.30, -257.35, -2.22, 0, 'summon third wave'),
(1090, 240, 10, 4001, 360000, 942.28, -254.49, -2.38, 0, 'summon third wave'),
(1090, 240, 10, 4001, 360000, 938.52, -253.20, -2.08, 0, 'summon third wave'),
(1090, 240, 10, 4004, 360000, 939.51, -253.11, -2.02, 0, 'summon third wave'),

(1090, 419, 34, 2666, 1090, 0, 0, 0, 0, 'Stop script if player is dead or out of range'),
(1090, 419, 34, 2667, 1090, 0, 0, 0, 0, 'Stop script if npc is dead'),
(1090, 420, 7, 1090, 0, 0, 0, 0, 0, 'quest complete');

DELETE FROM conditions WHERE condition_entry IN (2666, 2667);
INSERT INTO conditions VALUES
(2666, 36, 0, 60),
(2667, 36, 3, 0);
