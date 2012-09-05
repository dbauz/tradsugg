-- Dalliah and Soccothares
UPDATE creature_template SET faction_A=370, faction_H=370 WHERE entry=21101;
DELETE FROM creature_template_addon WHERE entry=20886;
delete from spell_script_target where entry in (35754,35770);
insert into spell_script_target values
(35754,1,20978),
(35770,1,20978),
(35754,1,21030);
UPDATE creature_template SET MovementType=0 WHERE entry IN (20978,21030);
delete from creature_linking_template where entry IN (24858);
insert into creature_linking_template values
(24858,568,23574,4112,0);
delete from creature_linking_template where entry IN (24143);
insert into creature_linking_template values
(24143,568,23577,4096,0);