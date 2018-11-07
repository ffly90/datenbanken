-- Aufgabe 1

-- Frage 1
SELECT pnr, nachname, gebdatum, gehalt from mitarbeiter;

-- Frage 2
SELECT nachname, vorname, kst from mitarbeiter order by kst desc, nachname desc;

-- Frage 3
SELECT ausbstand from mitarbeiter order by ausbstand desc;

-- Frage 4
SELECT distinct pnr, projnr from mitarb_akt;

-- Frage 5
SELECT nachname,gehalt,bonus from mitarbeiter where geschlecht = 'M';

-- Frage 6
SELECT nachname,gehalt,prov from mitarbeiter where gehalt >20000 and date_part('year',einstdat)>1979;

-- Frage 7
SELECT nachname,gehalt,bonus,prov from mitarbeiter where (gehalt>20000 and bonus = 400) or (bonus=500 and prov> 2000) order by nachname;

-- Frage 8
SELECT nachname,gehalt,bonus,prov from mitarbeiter where gehalt>20000 and (bonus=400 or bonus=500) and prov>2000 order by nachname;

-- Frage 9
SELECT projnr,aktnr,aktanf,aktende from mitarb_akt where projnr like 'AD%' and aktnr IN(10,80,180)  order by projnr, aktnr;

-- Frage 10
SELECT mgrnr,kst from kostenstelle where mgrnr IS NOT NULL order by mgrnr;

-- Frage 11




