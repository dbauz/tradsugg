DELETE FROM creature_ai_scripts WHERE creature_id=17976;
INSERT INTO creature_ai_scripts VALUES 
('1797601','17976','4','0','100','6','0','0','0','0','1','-34','0','0','0','0','0','0','0','0','0','0','Commander Sarannis - Yell on Aggro'),

('1797602','17976','9','0','100','3','0','10','3800','15300','11','34794','1','0','1','-37','0','0','0','0','0','0','Commander Sarannis (Normal) - Cast Arcane Resonance and Yell'),

('1797603','17976','9','0','100','5','0','10','2800','12900','11','34794','1','0','1','-37','0','0','0','0','0','0','Commander Sarannis (Heroic) - Cast Arcane Resonance and Yell'),

('1797604','17976','0','0','100','7','20400','20400','13300','37400','11','34799','1','1','1','-38','0','0','0','0','0','0','Commander Sarannis - Cast Arcane Devastation on 3 Arcane Resonance Stack and Yell'),

('1797605','17976','2','0','100','2','55','0','0','0','1','-343','0','0','12','20078','4','1800000','12','19633','4','1800000','Commander Sarannis (Normal) - Emote and Summon Bloodwarder Reservist and Bloodwarder Mender at 55% HP'),

('1797606','17976','2','0','100','2','55','0','0','0','12','20078','4','1800000','12','20078','4','1800000','1','-39','0','0','Commander Sarannis (Normal) - Summon 2 Bloodwarder Reservists and Yell at 55% HP'),

('1797607','17976','0','0','100','5','30000','30000','60000','60000','1','-343','0','0','12','20078','4','1800000','12','19633','4','1800000','Commander Sarannis (Heroic) - Emote and Summon Bloodwarder Reservist and Bloodwarder Mender'),

('1797608','17976','0','0','100','5','30000','30000','60000','60000','12','20078','4','1800000','12','20078','4','1800000','1','-39','0','0','Commander Sarannis (Heroic) - Summon 2 Bloodwarder Reservists and Yell'),

('1797609','17976','5','0','100','7','5000','5000','0','0','1','-21','-35','0','0','0','0','0','0','0','0','0','Commander Sarannis - Yell on Player Kill'),

('1797610','17976','6','0','100','6','0','0','0','0','1','-36','0','0','0','0','0','0','0','0','0','0','Commander Sarannis - Yell on Death');

 DELETE FROM creature_ai_texts where entry=-344;
