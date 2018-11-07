-- Übung 1
-- Frage 1
SELECT
    pnr,
    nachname,
    gebdatum,
    gehalt
FROM
    mitarbeiter
ORDER BY
    gehalt DESC;

-- Frage 2
SELECT
    nachname,
    vorname,
    kst
FROM
    mitarbeiter
ORDER BY
    kst DESC,
    nachname DESC;

-- Frage 3
SELECT
    DISTINCT ausbstand
FROM
    mitarbeiter
ORDER BY
    ausbstand DESC;

-- Frage 4
SELECT
    DISTINCT pnr,
    projnr
FROM
    mitarb_akt;

-- Frage 5
SELECT
    nachname,
    gehalt,
    bonus
FROM
    mitarbeiter
WHERE
    geschlecht = 'M';

-- Frage 6
SELECT
    nachname,
    gehalt,
    prov
FROM
    mitarbeiter
WHERE
    gehalt > 20000
    AND einstdat > date '1979-31-12';

-- Frage 7
SELECT
    nachname,
    gehalt,
    bonus,
    prov
FROM
    mitarbeiter
WHERE (gehalt > 20000
    AND bonus = 400)
OR (prov > 2000
    AND bonus = 500)
ORDER BY
    nachname;

-- Frage 8
SELECT
    nachname,
    gehalt,
    bonus,
    prov
FROM
    mitarbeiter
WHERE
    gehalt > 20000
    AND (bonus = 400
        OR bonus = 500)
    AND prov > 2000
ORDER BY
    nachname;

-- Frage 9
SELECT
    projnr,
    aktnr,
    aktanf,
    aktende
FROM
    mitarb_akt
WHERE
    projnr LIKE 'AD%'
    AND aktnr IN (10, 80, 180)
ORDER BY
    projnr,
    aktnr;

-- Frage 10
SELECT
    mgrnr,
    kst
FROM
    kostenstelle
WHERE
    mgrnr IS NOT NULL
ORDER BY
    mgrnr;

-- Frage 11
SELECT
    pnr,
    nachname,
    gehalt,
    bonus
FROM
    mitarbeiter
WHERE
    bonus BETWEEN 800
    AND 1000
ORDER BY
    bonus;

-- Frage 12
SELECT
    pnr,
    nachname,
    gehalt,
    kst
FROM
    mitarbeiter
WHERE
    kst LIKE 'A%'
    OR kst LIKE 'B%'
    OR kst IN ('C00', 'C01')
ORDER BY
    nachname;

-- Frage 13
SELECT
    projnr,
    projname
FROM
    projekt
WHERE
    projname LIKE '%SUPPORT%';

-- Frage 14
SELECT
    kst,
    kstname
FROM
    kostenstelle
WHERE
    kst LIKE '_1_';

-- Übung 2
-- Frage 1
SELECT
    DISTINCT projnr,
    projname,
    aktnr
FROM
    projekt p
    JOIN mitarb_akt m ON p.projnr = m.projnr
WHERE
    projnr LIKE 'AD%'
ORDER BY
    projnr,
    aktnr;

-- Frage 2
SELECT
    pnr,
    nachname,
    projnr
FROM
    mitarbeiter m
    JOIN mitarb_akt a ON m.pnr = a.pnr
WHERE
    projnr = 'AD3113';

-- Frage 3
SELECT
    pnr,
    projnr,
    projname,
    aktnr,
    aktanf
FROM
    mitarb_akt a
    JOIN projekt p ON a.projnr = p.projnr
WHERE
    aktanf = date '2002-01-01'
ORDER BY
    projnr,
    pnr,
    aktnr;

-- Frage 4
SELECT
    kst,
    mgrnr,
    nachname
FROM
    kostenstelle k
    JOIN mitarbeiter m ON mgrnr = pnr
WHERE
    kst IN ('A00', 'B01')
ORDER BY
    kst;

-- Frage 5
SELECT
    kst,
    nachname,
    projname,
    aktnr
FROM
    projekt p
    JOIN mitarb_akt a ON p.projnr = a.projnr
    JOIN mitarbeiter m ON m.pnr = a.pnr
WHERE
    kst = 'A00'
ORDER BY
    projname,
    aktnr;

-- Frage 6
SELECT
    DISTINCT kst,
    nachname,
    projname,
    aktnr
FROM
    projekt p
    JOIN mitarb_akt a ON p.projnr = a.projnr
    JOIN mitarbeiter m ON m.pnr = a.pnr
ORDER BY
    kst,
    nachname,
    aktnr;

-- Frage 7
SELECT
    aktnr,
    mgrnr,
    aktanf,
    projnr,
    nachname
FROM
    mitarb_akt a
    JOIN projekt p ON a.projnr = p.projnr
    JOIN kostenstelle k ON k.kst = p.kst
    JOIN mitarbeiter m ON a.pnr = m.pnr
WHERE
    aktanf > date '2002-07-14'
ORDER BY
    aktnr,
    aktanf;

-- Frage 8
SELECT
    kst,
    mgr.nachname,
    m.nachname,
    mgr.einstdat,
    m.einstdat
FROM
    kostenstelle k
    JOIN mitarbeiter mgr ON mgrnr = pnr
    JOIN mitarbeiter m ON m.kst = k.kst
WHERE
    m.einstdat < mgr.einstdat
    AND k.kst = 'A00';

-- Übung 3
-- Frage 1
SELECT
    nachname,
    gehalt, (gehalt * 1.05) erhoe - j - gehalt, (gehalt * 1.05 / 12) erhoe - m - gehalt
WHERE (gehalt * 1.05) < 40000
ORDER BY
    gehalt;

-- Frage 2
SELECT
    nachname,
    ausbstand, (gehalt + 1200) gehalt - neu, (bonus / 2) bonus - neu
FROM
    mitarbeiter
WHERE
    ausbstand IN (18, 20)
ORDER BY
    ausbstand DESC,
    gehalt - neu;

-- Frage 3
SELECT
    kst,
    nachname,
    gehalt, (gehalt - 1000) gehalt - abst
FROM
    mitarbeiter
WHERE
    kst = 'D11'
    AND gehalt BETWEEN 50000 * 0.8
    AND 50000 * 1.2
ORDER BY
    gehalt;

-- Frage 4
SELECT
    kst,
    nachname, (gehalt + bonus + prov) einkommen
FROM
    mitarbeiter
WHERE
    kst = 'D11'
    AND (gehalt + bonus + prov) > gehalt * 1.05
ORDER BY
    einkommen DESC;