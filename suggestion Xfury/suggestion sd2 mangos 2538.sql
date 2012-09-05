/*Suggested DB update*/
/* Putricide door events*/
/*Script id: 23438*/
DELETE FROM event_scripts WHERE id=23438;
INSERT INTO event_scripts VALUES 
(23438,9,12,83063,0,0,0,0,0,0,0,0,0,0,0,0,'Open Door Scientist Airlock Door Orange'),
(23438,1,11,83067,0,0,0,0,0,0,0,0,0,0,0,0,'Open Door Doodad_IceCrown_OrangeTubes02'),
(23438,0,27,4,0,201616,10,0,0,0,0,0,0,0,0,0,'Set GO Flag to No_Interact for Gas Release Valve');
/* Script id: 23426*/
DELETE FROM event_scripts WHERE id=23426;
INSERT INTO event_scripts VALUES
(23426,9,12,83064,0,0,0,0,0,0,0,0,0,0,0,0,'Open Door Scientist Airlock Door Green'),
(23426,1,11,83068,0,0,0,0,0,0,0,0,0,0,0,0,'Open Door Doodad_IceCrown_GreenTubes02'),
(23426,0,27,4,0,201615,10,0,0,0,0,0,0,0,0,0,'Set GO Flag to No_Interact for Ooze Release Valve');