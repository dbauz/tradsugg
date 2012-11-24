DELETE FROM creature_template_addon WHERE (entry=28821);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES (28821, 0, 0, 0, 0, 0, 0, 54173);
DELETE FROM creature_template_addon WHERE (entry=29175);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES (29175, 14338, 0, 0, 0, 0, 0, '');

Delete from gameobject where id in (191302,191301,191330);
INSERT INTO gameobject (id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) values
(191330, 609, 1, 128, 2282.675, -5284.146, 82.61536, 2.478367, 0, 0, 0, 1, -120, 255, 1), -- 191330 (Area: 4361)
(191302, 609, 1, 128, 2268.648, -5344.329, 86.94088, 2.478367, 0, 0, 0, 1, -120, 255, 1), -- 191302 (Area: 4361)
(191301, 609, 1, 128, 2290.013, -5248.24, 82.4146, 0.06981169, 0, 0, 0, 1, -120, 255, 1), -- 191301 (Area: 4361)
(191302, 609, 1, 128, 2322.023, -5299.277, 81.99951, 0.1919852, 0, 0, 0, 1, -120, 255, 1), -- 191302 (Area: 4361)
(191302, 609, 1, 128, 2248.281, -5308.292, 80.57009, 2.565632, 0, 0, 0, 1, -120, 255, 1), -- 191302 (Area: 4361)
(191301, 609, 1, 128, 2281.657, -5307.493, 86.68705, -1.256636, 0, 0, 0, 1, -120, 255, 1), -- 191301 (Area: 4361)
(191302, 609, 1, 128, 2256.331, -5269.824, 80.03564, 1.012289, 0, 0, 0, 1, -120, 255, 1), -- 191302 (Area: 4361)
(191302, 609, 1, 128, 2299.604, -5267.319, 81.93887, 2.356195, 0, 0, 0, 1, -120, 255, 1), -- 191302 (Area: 4361)
(191302, 609, 1, 128, 2291.603, -5331.028, 131.3173, -0.8726639, 0, 0, 0, 1, -120, 255, 1); -- 191302 (Area: 4361)

delete from spell_script_target where entry=53210;
insert into spell_script_target values
(53210, 1,29177),
(53210, 1,29176),
(53210, 1,29180),
(53210, 1,29182),
(53210, 1,29181),
(53210, 1,29178),
(53210, 1,29179),
(53210, 1,29174);
delete from spell_script_target where entry=53644;
insert into spell_script_target values
(53644, 1,29206),
(53644, 1,29219),
(53644, 1,29186);