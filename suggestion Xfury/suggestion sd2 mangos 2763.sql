-- quest 12687
-- riders are on vehicle accessory
delete from creature where id=28768;
delete from vehicle_accessory where vehicle_entry = 28782;
insert into vehicle_accessory values
(28782, 0, 28768, 'Acherus Deathcharger - Dark Rider of Acherus');
delete from spell_script_target where entry=52349;
insert into spell_script_target values
(52349,1,28782);
delete from npc_spellclick_spells where npc_entry=28782;
insert into npc_spellclick_spells (npc_entry, spell_id, quest_start, cast_flags) values
(28782, 52349, 0, 2);
delete from dbscripts_on_spell where id = 52361;
insert into dbscripts_on_spell (id, command, datalong, data_flags, comments) values
(52361, 14, 52349, 6, 'remove Overtake aura'),
(52361, 14, 52693, 6, 'remove Realm of Shadows aura');


-- Additional DB update
UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry IN (28670,30161);
delete from creature_template_spells where entry in (17178,28833,28670,28606,28605,28782);
insert into creature_template_spells values
(17178,29992,0,0,0,0,0,0,0),
(28670,53114,53112,53110,0,0,0,0,0),
(28833,52435,52576,0,0,52588,0,0,0),
(28606,52264,52268,0,0,0,0,0,0),
(28605,52264,52268,0,0,0,0,0,0),
(28782,52362,0,0,0,0,0,0,0);



-- EventAI update
UPDATE creature_template SET AIName='EventAI' WHERE entry=28768;
DELETE FROM creature_ai_scripts WHERE creature_id=28768;
INSERT INTO creature_ai_scripts VALUES 
('2876801','28768','4','0','100','0','0','0','0','0','1','-780','0','0','0','0','0','0','0','0','0','0','Dark Rider of Acherus - Yell on Aggro'),
('2876802','28768','0','0','100','1','0','1500','6000','9000','11','52372','1','0','0','0','0','0','0','0','0','0','Dark Rider of Acherus - Cast Icy Touch'),
('2876803','28768','0','0','100','1','3000','7000','6000','9000','11','50688','1','0','0','0','0','0','0','0','0','0','Dark Rider of Acherus - Cast Plague Strike'),
('2876804','28768','0','0','100','1','6000','10000','6000','9000','11','52374','1','0','0','0','0','0','0','0','0','0','Dark Rider of Acherus - Cast Blood Strike'),
('2876805','28768','9','0','100','1','5','30','2000','2000','11','52356','1','0','0','0','0','0','0','0','0','0','Dark Rider of Acherus - Cast Throw');