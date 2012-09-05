-- Ouro
-- update creature id to the spawner - boss is summoned by script
update creature set id = 15957 where id = 15517;
-- delete the bugs from the map - they are summoned
delete from creature where id = 15718;
-- Fix some flags and factions
UPDATE creature_template SET unit_flags=unit_flags|33554432 WHERE entry in (15957,15712,15717);
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16 WHERE `entry` = 15712;