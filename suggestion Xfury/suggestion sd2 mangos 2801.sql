DELETE FROM spell_script_target WHERE entry = 50742;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(50742, 1, 27981, 0);
DELETE FROM spell_script_target WHERE entry = 50747;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(50747, 1, 27981, 0);
DELETE FROM creature_linking_template WHERE entry IN (28165,27981,27979,27982,27980);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(28165, 599, 27978, 4112, 0),
(27981, 599, 27978, 4112, 0),
(27979, 599, 27978, 4112, 0),
(27982, 599, 27978, 4112, 0),
(27980, 599, 27978, 4112, 0);
DELETE FROM achievement_criteria_requirement WHERE criteria_id=7593 AND type IN (11, 18);
INSERT INTO achievement_criteria_requirement VALUES
(7593, 18, 0, 0);
-- data from YTDB
UPDATE creature_template SET minhealth=11379, maxhealth=11379, faction_A=14, faction_H=14, mindmg=372, maxdmg=558, attackpower=139, armor=8833, dmg_multiplier=1.4, rangeattacktime=2000, minrangedmg=298,
 maxrangedmg=446, rangedattackpower=111, minlevel=77, maxlevel=77 WHERE entry=28165;
UPDATE creature_template SET faction_A=14, faction_H=14 WHERE entry=31389;

-- Tribunal
UPDATE creature SET MovementType=0 WHERE id=28235;
UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry=28235;
DELETE FROM spell_script_target WHERE entry = 51001;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(51001, 1, 22515, 0),
(51001, 1, 30897, 0);
DELETE FROM spell_script_target WHERE entry = 51136;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(51136, 1, 22515, 0),
(51136, 1, 30899, 0);
DELETE FROM spell_script_target WHERE entry = 59867;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(59867, 1, 22515, 0),
(59867, 1, 30899, 0);
DELETE FROM spell_script_target WHERE entry = 51288;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(51288, 1, 27983, 0),
(51288, 1, 27984, 0),
(51288, 1, 27985, 0);
DELETE FROM spell_script_target WHERE entry = 50627;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(50627, 1, 27972, 0);