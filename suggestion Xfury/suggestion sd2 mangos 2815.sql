-- ### Oculus vehicle spells scripts ###
-- ruby
DELETE FROM spell_script_target WHERE entry = 49464;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(49464, 1, 27756, 0);
-- emerald
DELETE FROM spell_script_target WHERE entry = 49346;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(49346, 1, 27692, 0);
-- amber
DELETE FROM spell_script_target WHERE entry = 49460;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(49460, 1, 27755, 0);
-- scaling spells
DELETE FROM spell_script_target WHERE entry = 66667;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(66667, 1, 27756, 0),
(66667, 1, 27692, 0),
(66667, 1, 27755, 0);
-- spells - the 3rd spell require some core condition because it's available only for the last boss
DELETE FROM creature_template_spells WHERE entry in (27756,27692,27755);
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(27756,50232,50240,50253,0,0,53389,0,0),
(27692,50328,50341,50344,0,0,53389,0,0),
(27755,49840,49838,49592,0,0,53389,0,0);