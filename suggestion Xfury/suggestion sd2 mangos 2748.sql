delete from creature where id in (20864, 20865) and position_y between 0 and 1;
UPDATE creature_template SET MovementType=0 WHERE entry in (20865, 20864);