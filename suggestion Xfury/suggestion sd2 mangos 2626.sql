-- missing spawns
DELETE FROM creature WHERE id=38008;
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(38008, 631, 15, 1, 16925, 0, 4687.2, 2769.48, 364.17, 3.14159, 86400, 0, 0, 1800000, 0, 0, 0);
DELETE FROM creature WHERE id=38004;
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(38004, 631, 15, 1, 31093, 0, 4686.46, 2769.376, 377.4767, 2.98922, 86400, 0, 0, 12006645, 4258, 0, 0);
-- general fixes
UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry IN (38004,38451,38332,38454);
UPDATE creature_template SET RegenHealth = 0 WHERE entry IN (37970,37972,37973);
UPDATE creature SET spawnMask = 15 WHERE id in (37970,37972,37973);
-- delete c_t_a - this is handled in script
delete from creature_template_addon where entry in (37973,37970,37972);
-- script targets
delete from spell_script_target where entry=70983;
insert into spell_script_target values
(70983,1,37973),
(70983,1,37970),
(70983,1,37972);
delete from spell_script_target where entry=71075;
insert into spell_script_target values
(71075,1,37973),
(71075,1,37972);
delete from spell_script_target where entry=71079;
insert into spell_script_target values
(71079,1,37973),
(71079,1,37970);
delete from spell_script_target where entry=71082;
insert into spell_script_target values
(71082,1,37970),
(71082,1,37972);
-- linking
delete from creature_linking_template where entry in (37972,37973,38008,38332,38451,38369,38422,38454,38458);
insert into creature_linking_template values
(37972,631,37970,3,0),
(37973,631,37970,3,0),
(38008,631,37970,3,0),
(38332,631,37970,4112,0),
(38451,631,37970,4112,0),
(38369,631,37970,4112,0),
(38422,631,37970,4112,0),
(38454,631,37970,4112,0),
(38458,631,37970,4112,0);