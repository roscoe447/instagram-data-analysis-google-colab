
-- =========================
-- NAČÍTANIE DATASETU
-- =========================


SELECT*
FROM "clean_dataset"

SELECT COUNT(*) AS null_id
FROM clean_dataset
WHERE id_pouzivatela IS NULL; 

-- Preview datasetu (kontrola štruktúry)
SELECT *
FROM clean_dataset
LIMIT 10


-- =========================
-- ANALÝZA DÁT
-- =========================

-- 1: Počet použivateľov v tabuľke: 
SELECT COUNT (*) as celkovy_pocet_pouzivatelov
FROM clean_dataset

-- 2: Všetci použivatelia z Brazílie:
SELECT COUNT (*) as krajina_spolu
FROM clean_dataset
WHERE krajina = 'Brazília';

-- 3: Počet použivateľov s premium verziou aplikacie:
SELECT COUNT (*) as premium_pouzivatel
FROM clean_dataset

-- 4: Používatelia nad 50 rokov: 
SELECT COUNT (*) as vek_nad_5O
FROM clean_dataset
WHERE vek>=50;

-- 5: Priemerný vek použivateľov: 
SELECT AVG (vek)
FROM clean_dataset;

-- 6: Koľko používateľov je pre každú krajinu?
SELECT krajina, COUNT(*) as pocet_obyv
FROM clean_dataset
GROUP BY krajina
ORDER BY krajina DESC

-- 7: Koľko použivateľov používa prémium verziu a koľko nie
SELECT pouziva_premium, COUNT(*)
FROM clean_dataset   
GROUP BY pouziva_premium;

-- 8: Priemerné BMI pre každé pohlavie
SELECT pohlavie, AVG ("BMI")
FROM clean_dataset
GROUP BY pohlavie

-- 9: Priemerný počet krokov za deň pre každú krajinu.
SELECT krajina, AVG(kroky_za_den) as priemer_krokov
FROM clean_dataset
GROUP BY krajina 
ORDER BY krajina DESC

-- 10: Priemerný počet krokov za deň pre používateľov nad 50 rokov (podľa krajiny)
SELECT krajina, AVG(kroky_za_den)
FROM clean_dataset
WHERE vek>50
GROUP BY krajina

-- 11: Koľko používateľov má deti a koľko nie (rozdelené podľa pohlavia)
SELECT pohlavie, ma_deti, COUNT(*) as pocet_deti_na_pouzivatela
FROM clean_dataset
GROUP BY pohlavie, ma_deti
ORDER BY pocet_deti_na_pouzivatela DESC

-- 12: Ktoré krajiny majú najvyššie priemerné skóre angažovanosti
SELECT krajina, AVG(skore_angazovanosti) as naj_skore
FROM clean_dataset
GROUP BY krajina
ORDER BY naj_skore DESC

-- 13: Aký je rozdiel v priemernom skóre angažovanosti medzi premium a non-premium používateľmi
SELECT pouziva_premium, AVG(skore_angazovanosti)
FROM clean_dataset
GROUP BY pouziva_premium

-- 14: Porovnaj priemerný denný čas v aplikácii medzi používateľmi s deťmi a bez detí
SELECT ma_deti, AVG(cas_na_feede_za_den + cas_na_explore_za_den + cas_na_spravach_za_den + cas_na_reels_za_den) as preiemer
FROM clean_dataset
GROUP BY ma_deti

-- 15: Rozdeľ používateľov do vekových skupín (<30, 30–50, >50)

SELECT
  id_pouzivatela,
  vek,
  CASE
    WHEN vek < 30 THEN '<30'
    WHEN vek BETWEEN 30 AND 50 THEN '30-50'
    ELSE '>50'
  END AS vekova_skupina
FROM clean_dataset;


