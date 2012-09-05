delete from spell_script_target where entry=56312;
insert into spell_script_target values
(56312,1,29310);
delete from creature_linking_template where entry in (30114,30385);
insert into creature_linking_template values
(30114,619,29310,1028,0),
(30385,619,29310,4112,0);