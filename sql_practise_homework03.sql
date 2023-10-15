-------------------------------------------------------HOMEWORK--3---------------------------------------------------------------------------

--1-musteri tablosundaki tüm kayıtları listeleyiniz.
SELECT * FROM musteri;
--2-Mesleği AVUKAT olanların sadece şehirlerini listeleyiniz.
SELECT city 
FROM musteri
WHERE job='AVUKAT';
--3-Kadın müşterilerin tüm bilgilerini listeleyiniz.
SELECT * 
FROM musteri
WHERE gender='K';
--4-Kadın müşterilerin sadece şehir bilgilerini listeleyiniz.
SELECT city 
FROM musteri
WHERE gender='K';
--5-Yaşı 40-50 arasında olan müşterileri listeleyiniz.
SELECT * 
FROM musteri
WHERE age BETWEEN 40 AND 50;
--6-Erkek müşterilerin mesleklerini listeleyiniz.
SELECT job 
FROM musteri
WHERE gender='E';
--7-Yaşı 40-50 arasında OLMAYAN müşterileri listeleyiniz.
SELECT * 
FROM musteri
WHERE age NOT BETWEEN 40 AND 50;
--8-Yaşı 30-40 arasında olan KADIN müşterilerden ÖĞRETMENLERİ listeleyiniz.
SELECT * 
FROM musteri
WHERE (age NOT BETWEEN 40 AND 50) AND gender='K';
--9-Yaşı 30-40 arasında OLMAYAN ERKEK müşterilerden AVUKAT OLMAYANLARI listeleyiniz.
SELECT * 
FROM musteri
WHERE age NOT BETWEEN 40 AND 50 AND gender='E' AND NOT job='AVUKAT';
--10-Geliri 3000-5000 arasında olan müşterileri listeleyiniz.
SELECT * 
FROM musteri
WHERE revenue BETWEEN 3000 AND 5000;
--11-ismi ALİ olan kayıtları siliniz.
DELETE FROM musteri WHERE musteri_ismi='Ali';
--12-yaşı 60 olan kayıtları siliniz.
DELETE FROM musteri WHERE age=60;
--13-mesleği 'KUAFÖR' ve cinsiyeti 'K' olan kullanıcıyı siliniz.
DELETE FROM musteri WHERE job ='KUAFÖR' AND gender ='K'
--14-geliri 6000 olan veya mesleği 'TESİSATÇI' olan kayıtları siliniz. 
DELETE FROM musteri WHERE revenue=6000 OR job='TESİSATÇI';
--15-musteri tablosundaki tüm kayıtları siliniz.
DELETE FROM musteri
--16-tedarikciler3 tablosunu SCHEMADAN kaldırınız.
DROP TABLE tedarikciler3
--17-urunler tablosunu SCHEMADAN kaldırınız.
DROP TABLE urunler;












































