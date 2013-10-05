DELETE FROM dbscripts_on_go_template_use WHERE id in (194264);
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, buddy_entry, search_radius, data_flags, comments) VALUES
(194264,0,13,0,194560,10,1,'use Dark Iron Portcullis'),
(194264,7,27,4,0,0,2,'set GO flag no Interact');
-- lightning orb movement (guesswork)
UPDATE creature_template SET MovementType=2 WHERE entry IN (33138);
DELETE FROM creature_movement_template WHERE entry IN (33138);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z) VALUES
(33138,1, 2134.899, -405.802, 438.247),
(33138,2, 2134.570, -440.317, 438.330),
(33138,3, 2166.783, -440.383, 438.247),
(33138,4, 2199.481, -435.117, 419.934),
(33138,5, 2212.861, -434.079, 412.968),
(33138,6, 2227.433, -433.584, 412.177),
(33138,7, 2227.929, -263.069, 412.177),
(33138,8, 2201.686, -262.987, 412.247),
(33138,9, 2183.241, -262.801, 414.736);