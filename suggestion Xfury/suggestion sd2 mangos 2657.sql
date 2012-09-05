-- Ouro sandworm base script target
delete from spell_script_target where entry=26063;
insert into spell_script_target values
(26063,0,180795);
-- Cthun
UPDATE `creature_template` SET unit_flags=unit_flags|33554432 WHERE `entry` in (15910,15904,15800);
delete from creature_linking_template where entry IN (15589,15725,15726,15904,15802,15728,15334,15910);
insert into creature_linking_template values
(15589,531,15727,4,0),
(15725,531,15589,4096,0),
(15726,531,15727,4128,0),
(15904,531,15727,4128,0),
(15802,531,15727,4128,0),
(15728,531,15727,4128,0),
(15334,531,15727,4128,0),
(15910,531,15727,4128,0);