DELETE FROM creature_linking_template WHERE entry IN (23818,24504,23817,23598);
INSERT INTO creature_linking_template VALUES
(23818,568,23578,4112,0),
(24504,568,23578,4112,0),
(23598,568,23578,4096,0),
(23817,568,23578,4,0);
delete from spell_script_target where entry in (42631,43962,45340,43734);
insert into spell_script_target values
(42631,1,23920),
(43962,1,22515),
(45340,1,22515),
(43734,1,23817);