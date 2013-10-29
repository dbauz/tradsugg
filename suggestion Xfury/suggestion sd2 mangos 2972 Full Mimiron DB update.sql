-- Mimiron
DELETE FROM spell_script_target WHERE entry IN (64539,65101,63274,63414,64425,63820,64444,64620,64436,64402,64623,65354,65224,65192,64570,64626,63041);
INSERT INTO spell_script_target VALUES
(64539, 1, 34071, 0),
(65101, 1, 34071, 0),
(63274, 1, 33576, 0),
(63414, 1, 33576, 2),
(63414, 1, 33432, 1),
(64425, 1, 33856, 0),
(63820, 1, 33856, 0),
(64620, 1, 33856, 0),
(64444, 1, 33670, 0),
(64436, 1, 33670, 0),
(64402, 1, 34050, 0),
(64623, 1, 34121, 0),
(65354, 1, 34121, 0),
(65192, 1, 34121, 0),
(65192, 1, 34363, 0),
(64570, 1, 34121, 0),
(64570, 1, 34363, 0),
(64626, 1, 34121, 0),
(64626, 1, 34363, 0),
-- (64619, 1, 34121, 0), -- cone spell; keep for reference until the core will support this
(65224, 1, 34121, 0),
(63041, 1, 34057, 0); -- Note: this might have different targets based on spell effect; Requires research
-- flag handled by script
UPDATE gameobject_template SET flags=flags&~16 WHERE entry=194739;
DELETE FROM creature_linking_template WHERE entry IN (34363,34121,33836,33855,34057,34147);
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(34363, 603, 33432, 4112, 0),
(34121, 603, 33432, 4112, 0),
(33836, 603, 33432, 4112, 0),
(33855, 603, 33432, 4112, 0),
(34057, 603, 33432, 4112, 0),
(34147, 603, 33432, 4112, 0);
UPDATE creature SET spawndist=0, MovementType=0 WHERE id=34143;
UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry=33670;
UPDATE creature_template SET RegenHealth=0 WHERE entry=33651;
UPDATE creature_template SET minlevel=80, maxlevel=80, minhealth=12600, maxhealth=12600, faction_A=14, faction_H=14 WHERE entry=34147;
UPDATE creature_template SET minlevel=80, maxlevel=80, minhealth=12600, maxhealth=12600, faction_A=14, faction_H=14, unit_flags=unit_flags|33554432 WHERE entry=34149;
-- assault bot loot (ytdb)
UPDATE creature_template SET lootid=34057 WHERE entry=34057;
DELETE FROM creature_loot_template WHERE entry=34057;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
(34057, 46029, 100, 0, 1, 1, 0);
-- rocket visuals
DELETE FROM vehicle_accessory WHERE vehicle_entry IN (33651);
INSERT INTO vehicle_accessory VALUES
(33651, 5, 34050, 'Rocket (Mimiron Visual)'),
(33651, 6, 34050, 'Rocket (Mimiron Visual)');
-- hard mode spells
DELETE FROM dbscripts_on_spell WHERE id in (64619,64570,64626,65192,65224,65354);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, buddy_entry, search_radius, data_flags, comments) VALUES
(64619,0,14,64561,0,0,6,'remove Flames aura on Water Spray'),
(64619,0,18,2000,0,0,6,'despawn on on Water Spray'),
(64570,0,14,64561,0,0,2,'remove Flames aura on Flame Suppressant'),
(64570,0,18,2000,0,0,2,'despawn on Flame Suppressant'), -- workaround because of bad DBC data
(64626,0,14,64561,0,0,6,'remove Flames aura on Explosion'),
(65192,0,14,64561,0,0,6,'remove Flames aura on Flame Suppressant'),
(65224,0,18,0,0,0,0,'despawn on Clear Fires'),
(65354,0,18,0,0,0,0,'despawn on Clear Fires');
-- achievs
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (10450,10463) AND type IN (11,18);
INSERT INTO achievement_criteria_requirement VALUES
(10450,18,0,0),
(10463,18,0,0);
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (10406,10405) AND type IN (12,18);
INSERT INTO achievement_criteria_requirement VALUES
(10405,12,1,0),
(10405,18,0,0),
(10406,12,0,0),
(10406,18,0,0);
-- mechanics
DELETE FROM vehicle_accessory WHERE vehicle_entry IN (34183);
INSERT INTO vehicle_accessory VALUES
(34183, 1, 34184, 'Clockwork Mechanic');