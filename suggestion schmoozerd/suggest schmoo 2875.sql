UPDATE quest_template SET StartScript = 0 WHERE entry = 945;
DELETE FROM dbscripts_on_quest_start WHERE id = 945;