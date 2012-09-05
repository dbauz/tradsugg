-- This one is summoned
delete from creature where id=19220;
-- Movement is Idle
UPDATE creature_template SET MovementType=0 WHERE entry IN (19220,19168,20990,19510,20988,20059,19735);
UPDATE creature_template SET MovementType=0 WHERE entry IN (21537,21539,21523,21522,21540,21541,21542);