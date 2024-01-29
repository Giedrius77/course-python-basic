DROP TABLE mokytojai;

CREATE TABLE mokytojai(
id INTEGER PRIMARY KEY AUTOINCREMENT,
vardas VARCHAR(50),
pavarde VARCHAR(50),
specialybe VARCHAR(50),
patirtis_metai VARCHAR(50)
);

INSERT INTO mokytojai (id, vardas, pavarde, specialybe, patirtis_metai) 
VALUES (Petras, Petraitis, Matematika, 11)
INSERT INTO mokytojai (id, vardas, pavarde, specialybe, patirtis_metai) 
VALUES (Ona, Onaite, Fizika, 12)
INSERT INTO mokytojai (id, vardas, pavarde, specialybe, patirtis_metai) 
VALUES (Marius, Marijus, Biologija, 9)
INSERT INTO mokytojai (id, vardas, pavarde, specialybe, patirtis_metai) 
VALUES (Rasa, Rasaitė, Anglų, 13)
INSERT INTO mokytojai (id, vardas, pavarde, specialybe, patirtis_metai) 
VALUES (Aurimas, Aurimaitis, Lietuvių, 6)
INSERT INTO mokytojai (id, vardas, pavarde, specialybe, patirtis_metai) 
VALUES (Gintare, Gintarėlė, Istorija, 4)
