-- SQLite
DROP TABLE kategorijos;
DROP TABLE prekes;

-- Sukuriame "Kategorijos" lentelę
CREATE TABLE kategorijos (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  pavadinimas TEXT
);

INSERT INTO kategorijos (pavadinimas)
    VALUES ("Masina", "Gel Battery 80Ah 12V");

-- Sukuriame "Prekes" lentelę
CREATE TABLE prekes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  pavadinimas TEXT,
  aprasymas TEXT,
  kategorijos_id INTEGER REFERENCES kategorijos(id)
);

INSERT INTO prekes (pavadinimas, aprasymas)
    VALUES ("Masina", "Gel Battery 80Ah 12V");
INSERT INTO prekes (pavadinimas, aprasymas)
    VALUES ("Masina", "Ziemines padangos x 4");
INSERT INTO prekes (pavadinimas, aprasymas)
    VALUES ("TV", "Netflix 1 Month subscription");
INSERT INTO prekes (pavadinimas, aprasymas)
    VALUES ("TV", "120cm istrizaines televizorius");
INSERT INTO prekes (pavadinimas, aprasymas)
    VALUES ("Elektra", "Triju gyslu geltonas kabelis");
INSERT INTO prekes (pavadinimas, aprasymas)
    VALUES ("Elektra", "Dvieju gyslu baltas kabelis");
INSERT INTO prekes (pavadinimas, aprasymas)
    VALUES ("Elektra", "Dvigubas jungiklis");