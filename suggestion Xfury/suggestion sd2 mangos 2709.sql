-- Terestian
DELETE FROM creature_linking_template WHERE entry IN (17267,17265);
INSERT INTO creature_linking_template VALUES
(17267,532,15688,4112,0),
(17265,532,15688,4112,0);
UPDATE creature_template SET MovementType=0 WHERE entry=17265;
delete from spell_target_position where id=30120;
insert into spell_target_position values
(30120,532,-11234.2,-1698.41,179.237,0);