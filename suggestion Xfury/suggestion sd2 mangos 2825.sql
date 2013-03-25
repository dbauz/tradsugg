DELETE FROM db_script_string WHERE entry BETWEEN 2000005515 AND 2000005520;
INSERT INTO db_script_string (entry, content_default) VALUES
(2000005515, 'They who dine on lost souls know only hunger.'),
(2000005516, 'Gaze into the void. It is the perpetuity in which they dwell.'),
(2000005517, 'They drink your fear: it is the blood of life.'),
(2000005518, 'They are the whisper on the shivering wind.'),
(2000005519, 'They do not die; they do not live. They are outside the cycle.'),
(2000005520, 'Where one falls, many shall take its place.');

DELETE FROM dbscripts_on_spell WHERE id IN (60291, 60292, 60293, 60294, 60295, 60296, 60297);
INSERT INTO dbscripts_on_spell (id, command, datalong, dataint, comments) VALUES
(60291, 0, 4, 2000005515, 'volazj - whisper aggro'),
(60292, 0, 4, 2000005516, 'volazj - whisper insanity'),
(60293, 0, 4, 2000005517, 'volazj - whisper slay1'),
(60294, 0, 4, 2000005518, 'volazj - whisper slay2'),
(60295, 0, 4, 2000005519, 'volazj - whisper slay3'),
(60297, 0, 4, 2000005520, 'volazj - whisper death2');