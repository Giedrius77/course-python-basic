-- pirma uzduotis - Sukurkite lentelę "mokytojai" su šiais stulpeliais: "id", "vardas", "pavarde", "specialybe" ir "patirtis_metais".
DROP TABLE mokytojai;

CREATE TABLE mokytojai(
id INTEGER PRIMARY KEY AUTOINCREMENT,
vardas VARCHAR(50),
pavarde VARCHAR(50),
specialybe VARCHAR(50),
patirtis_metai INTEGER
);

-- antra uzduotis - Įterpkite šiuos įrašus į sukurtą lentelę "mokytojai":
INSERT INTO mokytojai (vardas, pavarde, specialybe, patirtis_metai) 
    VALUES ('Petras', 'Petraitis', 'Matematika', 2013);
INSERT INTO mokytojai (vardas, pavarde, specialybe, patirtis_metai) 
    VALUES ('Ona', 'Onaite', 'Fizika', 2012);
INSERT INTO mokytojai (vardas, pavarde, specialybe, patirtis_metai) 
    VALUES ('Marius', 'Marijus', 'Biologija', 2015);
INSERT INTO mokytojai (vardas, pavarde, specialybe, patirtis_metai) 
    VALUES ('Rasa', 'Rasaitė', 'Anglų', 2011);
INSERT INTO mokytojai (vardas, pavarde, specialybe, patirtis_metai) 
    VALUES ('Aurimas', 'Aurimaitis', 'Lietuvių', 2018);
INSERT INTO mokytojai (vardas, pavarde, specialybe, patirtis_metai) 
    VALUES ('Gintare', 'Gintarėlė', 'Istorija', 2020);

SELECT * FROM mokytojai;

-- trecia uzduotis - Parodykite visus įrašus iš lentelės "mokytojai", kurių specialybė yra "Matematika".
SELECT * FROM mokytojai WHERE specialybe = "Matematika";

-- ketvirta uzduotis - Raskite visus mokytojus, kurių stažas yra ilgesnis nei 8 arba 9 metai, ir atvaizduokite tik jų vardą, pavardę bei specialybę.
SELECT * FROM mokytojai WHERE patirtis_metai > 8;

SELECT vardas, pavarde, specialybe FROM mokytojai;

-- penkta uzduotis - Pakeiskite mokytojos, vardu Rasa ir pavarde Rasaitė, pavardę į "Žolienė".
UPDATE mokytojai SET pavarde = "Zoliene" WHERE id = 4;

-- sesta uzduotis - Ištrinkite iš lentelės "mokytojai" mokytoją, kurio ID yra 4.
DELETE FROM mokytojai WHERE id = 4;

DELETE FROM mokytojai WHERE id >= 7;
