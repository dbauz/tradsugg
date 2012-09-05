UPDATE creature_template SET MovementType=0 WHERE entry in (17535,17546,17547,17543,17603,17534);
DELETE FROM creature_linking_template WHERE entry IN (18412,17546,17547,17543);
INSERT INTO creature_linking_template VALUES
(18412,532,18168,4112,0),
(17546,532,17535,4096,0),
(17547,532,17535,4096,0),
(17543,532,17535,4096,0);
delete from spell_script_target where entry=30951;
insert into spell_script_target values
(30951,1,17533);
UPDATE creature_template SET faction_A=16, faction_H=16 WHERE entry IN (17533,17534);