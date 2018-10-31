-- Aufgabe 1

SELECT name,beruf FROM angestellter;

-- Aufgabe 2

SELECT name,a_nr,gehalt FROM angestellter WHERE gehalt BETWEEN 3850 AND 4150;

-- Aufgabe 3

SELECT name,vorg,abt_nr FROM angestellter WHERE beruf='Kaufmann' ORDER BY abt_nr DESC;

-- Aufgabe 4

SELECT beruf FROM Angestellter WHERE name LIKE 'B%';

-- Aufgabe 5

SELECT beruf FROM angestellter WHERE beruf LIKE '__r%';

-- Aufgabe 6

SELECT COUNT(*) FROM angestellter WHERE gehalt > 5000;

-- Aufgabe 7

SELECT AVG(gehalt) DURCHGEH FROM angestellter WHERE beruf='Kaufmann';

-- Aufgabe 8

SELECT MIN(gehalt) FROM angestellter;

-- Aufgabe 9

SELECT name,abt_nr,gehalt FROM angestellter WHERE gehalt=(SELECT MAX(gehalt) FROM angestellter);

-- Aufgabe 10

SELECT abt_nr,AVG(gehalt) DURCHGEH FROM angestellter GROUP BY abt_nr ORDER BY DURCHGEH desc;

-- Aufgabe 11

SELECT * FROM (SELECT vorg,COUNT(vorg) AnzMit FROM angestellter WHERE vorg IS NOT NULL GROUP BY vorg) zwerg  WHERE AnzMit>2;

-- Aufgabe 12

SELECT * FROM angestellter WHERE vorg IS NULL;

-- Aufgabe 13

SELECT name,13*gehalt AS JAHRGEH,13*gehalt*1.035 AS ERHJAHRGEH FROM angestellter;

-- Aufgabe 14

SELECT name,beruf,abt_name FROM angestellter an JOIN abteilung ab ON ab.abt_nr=an.abt_nr;

-- Aufgabe 15

UPDATE angestellter SET gehalt=gehalt+400 WHERE name='Priester';

-- Aufgabe 16

SELECT name,gehalt,abt_name FROM abteilung JOIN angestellter ON abt_leiter=a_nr;

-- Aufgabe 17

SELECT name,abt_name,proz_arb FROM Pro_Ang pa JOIN projekt pr ON pr.p_nr=pa.p_nr JOIN angestellter an ON pa.a_nr=an.a_nr JOIN abteilung ab ON ab.abt_nr=an.abt_nr WHERE p_name='sap';

-- Aufgabe 18

DELETE FROM angestellter WHERE name='Scheer';