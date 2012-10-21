-- quest 10406
delete from quest_start_scripts where id = 10406;
insert into quest_start_scripts (id, command, datalong, data_flags, comments) values
(10406, 15, 35679, 6, 'Cast Protectorate Demolitionist');
update quest_template set StartScript=10406 where entry=10406;
delete from creature where guid=72473;
UPDATE creature_template SET MovementType=0 WHERE entry=20802;