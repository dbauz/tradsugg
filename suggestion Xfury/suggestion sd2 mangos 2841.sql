/*For UDB only*/
CREATE TEMPORARY TABLE IF NOT EXISTS creature_guid AS 
SELECT a.guid FROM creature a INNER JOIN creature_addon b ON b.guid = a.guid
WHERE b.auras IS NOT NULL AND a.map=658 AND a.id = 24110 AND  a.position_y < 130;
DELETE FROM creature_addon WHERE guid IN (select a.guid from creature_guid a);
DROP TABLE IF EXISTS creature_guid;