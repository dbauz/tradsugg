-- Anub'arak craeture linking
delete from creature_linking_template where entry in (34605,34606,34607,34660,34862);
insert into creature_linking_template values
(34605,649,34564,4112,0),
(34606,649,34564,4112,0),
(34607,649,34564,4112,0),
(34660,649,34564,4112,0),
(34862,649,34564,4112,0);
-- script targets
delete from spell_script_target where entry IN (65872,66332,66339,66181,66170);
insert into spell_script_target values
(65872,1,34660),
(66332,1,34862),
(66339,1,34862),
(66181,1,34606),
(66170,1,34660);
UPDATE `creature_template` SET InhabitType=InhabitType|4 WHERE `entry` = 34606;