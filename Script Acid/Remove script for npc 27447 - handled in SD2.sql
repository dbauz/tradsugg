DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=27447);
DELETE FROM `creature_ai_texts` WHERE `entry`in(-1165,-1166,-1167,-1168,-1169,-1170,-1171);
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 27447;