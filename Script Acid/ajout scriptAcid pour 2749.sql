UPDATE creature_template SET AIName='EventAI' WHERE entry=16863;
DELETE FROM creature_ai_scripts WHERE creature_id=16863;
INSERT INTO creature_ai_scripts VALUES 
('1686301','16863','1','0','100','0','1000','1000','0','0','11','33908','0','0','0','0','0','0','0','0','0','0','Deranged Helboar - Cast Burning Spikes on Spawn'),
('1686302','16863','2','0','100','0','30','0','0','0','11','8599','0','0','1','-106','0','0','0','0','0','0','Deranged Helboar - Cast Enrage When Below 30% HP'),
('1686303','16863','6','0','100','0','0','0','0','0','11','37689','0','2','0','0','0','0','0','0','0','0','Deranged Helboar - Cast Tell dog I just died! on Death');