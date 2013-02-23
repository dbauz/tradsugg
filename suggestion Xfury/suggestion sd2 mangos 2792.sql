-- Zarithrian Spawn Stalker
DELETE FROM creature WHERE id=39794;
INSERT INTO creature (id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(39794, 724, 15, 1, 0, 0, 3043.97, 419.88, 87.0399, 0, 300, 0, 0, 1, 0, 0, 0),
(39794, 724, 15, 1, 0, 0, 3062.6, 636.998, 82.7377, 0, 300, 0, 0, 1, 0, 0, 0);

-- Onyx Flamecaller linking
DELETE FROM creature_linking_template WHERE entry IN (39814);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(39814, 724, 39746, 4112, 0);

-- UDB only
UPDATE creature_template SET difficulty_entry_1=39815, minlevel=82, maxlevel=82, minhealth=202215, maxhealth=202215, minmana=125070, maxmana=125070, armor=10225, faction_A=103, faction_H=103,
 mindmg=315, maxdmg=473, attackpower=118, dmg_multiplier=83.2, baseattacktime=1500, rangeattacktime=1500, unit_flags=32768, minrangedmg=252, maxrangedmg=378, rangedattackpower=94 WHERE entry=39814;