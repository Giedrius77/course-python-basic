-- SQLite
-- Sukuriame "Studentai" lentelę
DROP TABLE studentai;
DROP TABLE kursai;
DROP TABLE studentu_kursai;

CREATE TABLE studentai (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  vardas VARCHAR(50),
  pavarde VARCHAR(50),
  el_pastas VARCHAR(100),
  telefonas VARCHAR(20)
);

-- Sukuriame "Kursai" lentelę
CREATE TABLE kursai (
  id INTEGER PRIMARY KEY,
  pavadinimas VARCHAR(50),
  aprasymas TEXT
);

-- Sukuriame "StudentuKursai" lentelę, kuri susieja "Studentai" ir "Kursai" lentelės Many-to-Many ryšiu
CREATE TABLE studentu_kursai (
  id INTEGER PRIMARY KEY,
  studento_id INTEGER REFERENCES studentai(id),
  kurso_id INTEGER REFERENCES kursai(id)
);

