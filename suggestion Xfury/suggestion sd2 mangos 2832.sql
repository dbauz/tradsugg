-- cleanup
DELETE FROM creature WHERE guid IN (132969,131748,131751);
-- Ick and Krick related
DELETE FROM creature_template_addon WHERE entry=36477;
INSERT INTO creature_template_addon (entry, b2_0_sheath) VALUES (36477, 1);
-- Pursuit whisper
DELETE FROM db_script_string WHERE entry IN (2000005524);
INSERT INTO db_script_string (entry, content_default) VALUES
(2000005524, '%s is chasing you!');
DELETE FROM dbscripts_on_spell WHERE id IN (68987);
INSERT INTO dbscripts_on_spell (id, command, datalong, dataint, comments) VALUES
(68987, 0, 5, 2000005524, 'ick - boss whisper pursuit');
-- Tyrannus intro mount
Delete from vehicle_accessory where vehicle_entry = 36658;
INSERT INTO vehicle_accessory VALUES
(36794, 0, 36658, 'Scourgelord Tyrannus - intro');
-- Misc mobs
Delete from vehicle_accessory where vehicle_entry = 36891;
INSERT INTO vehicle_accessory VALUES
(36891, 0, 31260, 'Iceborn Proto-Drake');
