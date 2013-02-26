-- quest 10458
DELETE FROM creature_template_addon WHERE entry=21109;
INSERT INTO creature_template_addon (entry,auras) VALUES (21109,36169);
delete from spell_script_target where entry=36035;
insert into spell_script_target values
(36035,1,21071,0);
UPDATE creature_template SET MovementType=0 WHERE entry IN (21073,21097,21109,21116);

-- UDB only:
-- Fix model (YTDB) and delete extra spawn
UPDATE creature_template SET modelid_1=15294, modelid_2=14515 WHERE entry=21060;
DELETE FROM creature WHERE guid=74167;