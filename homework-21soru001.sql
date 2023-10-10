CREATE TABLE calisanlar(
id SERIAL,
isim VARCHAR(20),
yas INTEGER,
maas REAL,
email VARCHAR(50) UNIQUE
);

INSERT INTO calisanlar(isim,yas,maas,email) VALUES('Ali',39,12500,'ali@gmail.com'),
('Derya',28,15000,'derya@yahoo.com'),
('Yusuf',32,18000,'yusuf@gmail.com'),
('Halil',48,22000,'halil@gmail.com'),
('Ece',54,21000,'ece@gmail.com'),
('Can',38,19000,'can@gmail.com'),
('Elif',27,14000,'elif@gmail.com'),
('Ezgi',35,21000,'ezgi@gmail.com');

DROP TABLE calisanlar; 

DELETE FROM calisanlar;

-- 1) Tablo bilgilerini listeleyiniz.
SELECT * FROM calisanlar;
-- 2) isim, yaş ve maaş bilgilerini listeleyiniz
SELECT isim,yas,maas FROM calisanlar;
-- 3) id'si 8 olan personel bilgilerini listeleyiniz
SELECT * FROM calisanlar WHERE id=8;
-- 4) id'si 5 olan personelin isim, yaş ve email bilgilerini listeleyiniz
SELECT isim,yas,email FROM calisanlar WHERE id=5;
-- 5) 30 yaşından büyük personel bilgilerini listeleyiniz.
SELECT * FROM calisanlar WHERE yas>30;
-- 6) maası 21000 olmayan personel bilgilerini listeleyiniz.
SELECT * FROM calisanlar WHERE NOT maas=21000;
-- 7) ismi a harfi ile başlayan personel bilgilerini listeleyiniz.
SELECT * FROM calisanlar WHERE isim ILIKE 'a%';
-- 8) ismi n harfi ile biten personel bilgilerini listeleyiniz.
SELECT * FROM calisanlar WHERE isim LIKE '%n';
-- 9) email adresi gmail olan personel bilgilerini listeleyiniz.
SELECT * FROM calisanlar WHERE email LIKE '%gmail%';
-- 10) email adresi gmail olmayan personel bilgilerini listeleyiniz.
SELECT * FROM calisanlar WHERE NOT email LIKE '%gmail%';
-- 11) id'si 3,5,7 ve 9 olan personel bilgilerini listeleyiniz.
SELECT * FROM calisanlar WHERE id IN(3,5,7,9);
-- 12) yaşı 39,48 ve 54 olmayan personel bilgilerini listeleyiniz.
SELECT * FROM calisanlar WHERE NOT yas IN(39,48,54);
-- 13) yaşı 30 ve 40 arasında olan personel bilgilerini listeleyiniz.
SELECT * FROM calisanlar WHERE yas BETWEEN 30 AND 40;
-- 14) yaşı 30 ve 40 arasında olmayan personel bilgilerini listeleyiniz.
SELECT * FROM calisanlar WHERE NOT yas BETWEEN 30 AND 40;
-- 15) emaili olmayan personel bilgilerini listeleyiniz.
INSERT INTO calisanlar(isim,yas,maas) VALUES('Mustafa',39,26000);
-- 16) emaili olan personel bilgilerini listeleyiniz.
SELECT * FROM calisanlar WHERE email IS NULL;

SELECT * FROM calisanlar WHERE email IS NOT NULL;
-- 17) personel bilgilerini yaşa göre sıralayınız.
SELECT * FROM calisanlar ORDER BY yas;
-- 18) personel bilgilerini maaşa göre sıralayınız.
SELECT * FROM calisanlar ORDER BY maas;
-- 19) personelin yaşlarını büyükten küçüğe doğru sıralayınız.
SELECT * FROM calisanlar ORDER BY yas DESC;
-- 20) personelin maaşlarını büyükten küçüğe doğru sıralayınız.
SELECT * FROM calisanlar ORDER BY maas DESC;
-- 21) En yüksek maaş olan ilk 3 personel bilgilerini sıralayınız
SELECT * FROM calisanlar ORDER BY maas DESC LIMIT 3;
-- 22) En yüksek maaş olan ilk personel bilgilerini sıralayınız
SELECT * FROM calisanlar ORDER BY maas DESC LIMIT 1;

-- ortalama maas bulma

SELECT AVG(maas) FROM calisanlar;

SELECT ROUND (AVG(maas),1) FROM calisanlar;


CREATE TABLE calisanlar2(
id SERIAL,
isim VARCHAR(20),
yas INTEGER,
maas INTEGER,
email VARCHAR(50) UNIQUE
);

INSERT INTO calisanlar2(isim,yas,maas,email) VALUES('Ali',39,12500,'ali@gmail.com');
INSERT INTO calisanlar2(isim,yas,maas,email) VALUES('Veli',35,15000,'veli@gmail.com');

SELECT AVG(maas) FROM calisanlar2;

SELECT ROUND (AVG(maas),2) FROM calisanlar2;