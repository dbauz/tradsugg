DELETE FROM `creature` WHERE `id` in (22418,17968);
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(22418, 534, 1, 1, 18783, 0, 5503.713, -3523.436,1608.781, 0.0, 604800, 0, 0, 7588, 0, 0, 0);
delete from spell_script_target where entry in (32111,32124);
insert into spell_script_target values
(32111,1,17946),
