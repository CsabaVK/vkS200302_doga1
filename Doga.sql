-- Garaguly Csaba
CREATE TABLE tanulok(
TKOD varchar(5) not null PRIMARY KEY,
TNEV varchar(40) not null,
SZULHELY varchar(40) not null,
SZULIDO date not null,
OSZTONDIJ int NOT null
)

INSERT INTO `tanulok`(`TKOD`, `TNEV`, `SZULHELY`, `SZULIDO`, `OSZTONDIJ`) VALUES 
('T2345','Kiss Virág','Eger','1998-12-11',120000),
('T3456','Kis Eszter','Eger','2000-02-28',105000),
('T4567','Nagy Luca','Budapest','2001-01-30',150000),
('T5678','Veres Róza','Budapest','1994-07-12',210000),
('T6789','Kovács Péter','Szeged','1996-05-12',120000)

-- 1 feladat
SELECT * FROM `tanulok` WHERE 1

-- 2 feladat
SELECT `TNEV`, `OSZTONDIJ` FROM `tanulok` WHERE 1

-- 3 feladat
SELECT `TNEV`, `OSZTONDIJ`, 1.10 * `OSZTONDIJ` AS 'Emelt Ösztöndíj' FROM `tanulok` WHERE 1

-- 4 feladat
SELECT DISTINCT `OSZTONDIJ` FROM `tanulok` WHERE 1

-- 5 feladat
SELECT COUNT(`TKOD`) AS 'Tanulok száma', 
SUM(`OSZTONDIJ`) AS 'Összes Ösztondíj', 
AVG(`OSZTONDIJ`) AS 'Átlagos Ösztöndíj' 
FROM `tanulok` WHERE 1

-- 6 feladat
SELECT `TNEV`, LEFT(`SZULIDO`,4) AS 'Születési év' FROM `tanulok` WHERE 1

-- 7 feladat
SELECT `TNEV`, `OSZTONDIJ` FROM `tanulok` WHERE `OSZTONDIJ` >= 150000

-- 8 feladat
SELECT `TNEV`, `OSZTONDIJ` FROM `tanulok` 
WHERE `SZULIDO` > '1998.01.01' 
AND `OSZTONDIJ` >= 150000

-- 9 feladat
SELECT `TNEV`, `OSZTONDIJ` FROM `tanulok` 
WHERE `OSZTONDIJ` >= 105000 
AND `OSZTONDIJ` <= 120000

-- 10 feladat
SELECT `TNEV`, `OSZTONDIJ` FROM `tanulok` 
WHERE `OSZTONDIJ` IN(100000, 150000)

-- 11 feladat
SELECT `SZULHELY` AS 'Születési Hely', 
AVG(`OSZTONDIJ`) AS 'A tanulók átlag fizetése' 
FROM `tanulok`
GROUP BY `SZULHELY` HAVING AVG(`OSZTONDIJ`) <= 120000

-- 12 feladat
SELECT `TNEV`, `OSZTONDIJ` 
FROM `tanulok` 
order BY `OSZTONDIJ` DESC, `TNEV`
