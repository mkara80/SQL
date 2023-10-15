CREATE TABLE musteri(
musteri_id SERIAL PRIMARY KEY,
musteri_ismi VARCHAR(50) NOT NULL,
age INT CHECK(age>18),
gender CHAR,
revenue REAL,
job VARCHAR(20),
city VARCHAR(20)
);

SELECT * FROM musteri;

INSERT INTO musteri VALUES(1001,'Ali'  ,   35, 'E', 2500, 'Muhendis',    'Istanbul');
INSERT INTO musteri VALUES(1002,'BURAK',   25, 'E', 3500, 'MİMAR',       'İZMİR');
INSERT INTO musteri VALUES(1003,'CEYHUN',  45, 'E', 2000, 'MÜHENDİS',    'ANKARA');
INSERT INTO musteri VALUES(1004,'DEMET',   30, 'K', 3000, 'ÖĞRETMEN',    'ANKARA');
INSERT INTO musteri VALUES(1005,'FERHAT',  40, 'E', 2500, 'MİMAR',       'İZMİR');
INSERT INTO musteri VALUES(1006,'GALİP',   55, 'E', 4000, 'ÖĞRETMEN',    'İSTANBUL');
INSERT INTO musteri VALUES(1007,'KÖKSAL',  25, 'E', 2000, 'AVUKAT',      'İZMİR');
INSERT INTO musteri VALUES(1008,'LEYLA',   60, 'K', 2500, 'MİMAR',       'İSTANBUL');
INSERT INTO musteri VALUES(1009,'MELEK',   30, 'K', 2500, 'ÖĞRETMEN',    'İSTANBUL');
INSERT INTO musteri VALUES(1010,'JALE',    40, 'K', 6000, 'İŞLETMECİ',   'ANKARA');
INSERT INTO musteri VALUES(1011,'TEKİN',   45, 'E', 2000, 'AVUKAT',      'ANKARA');
INSERT INTO musteri VALUES(1012,'SAMET',   20, 'E', 3000, 'MİMAR',       'İSTANBUL');
INSERT INTO musteri VALUES(1013,'ŞULE',    20, 'K', 4500, 'ÖĞRETMEN',    'İSTANBUL');
INSERT INTO musteri VALUES(1014,'VELİ',    40, 'E', 2500, 'ÖĞRETMEN',    'İZMİR');
INSERT INTO musteri VALUES(1015,'ZEYNEP',  50, 'K', 3500, 'TESİSATÇI',   'İZMİR');
INSERT INTO musteri VALUES(1016,'ARDA',    55, 'E', 2000, 'KUAFÖR',      'İZMİR');
INSERT INTO musteri VALUES(1017,'MELİS',   30, 'K', 3000, 'KUAFÖR',      'ANKARA');

SELECT musteri_ismi,job FROM musteri;

CREATE TABLE cities(
alan_kodu int PRIMARY KEY,
name VARCHAR(25) NOT NULL,
population INTEGER NOT NULL
);

SELECT * FROM cities;
INSERT INTO cities VALUES(11);
INSERT INTO cities VALUES(142,'NULL',123456789);







































