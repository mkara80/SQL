CREATE TABLE ogrenciler(
	id integer primary key,
    isim varchar(50),
	adres varchar(100),
	sinav_notu integer
	);
	
	--veya
	
CREATE TABLE ogrenciler(
	id integer primary key,
    isim varchar(50),
	adres varchar(100),
	sinav_notu integer,
	CONSTRAINT std_pk PRIMARY KEY(id)
);

--2 PK olursa:
CREATE TABLE ogrenciler(
	id integer primary key,
    isim varchar(50),
	adres varchar(100),
	sinav_notu integer,
	CONSTRAINT composite_pk PRIMARY KEY(id,isim)
);

/*
   Niye Composite PK ya ihtiyacim var??
   
   ogrenci numarası
   2023064120 gibi composite PK dusunelim
   2023-->kayıt yılı
   064-->bolum kodu
   120-->kayıt sirasi
*/


--sınav notu aralık verme
CREATE TABLE ogrenciler(
	id integer primary key,
    isim varchar(50),
	adres varchar(100),
	sinav_notu integer CHECK (sinav_notu>0 AND sinav_notu<100)
	);


--Tablo veri ekleme 

INSERT INTO ogrenciler 
VALUES(1,'Betul Kuyucu','Istanbul',80);

INSERT INTO ogrenciler(id,isim,adres,sinav_notu) VALUES
         (2,'Zeki','Ankara',85),
		 (3,'Cemal','Tokat',70),
		 (4,'Mirac','Bursa',55),
		 (5,'Burcu','Sivas',1

INSERT INTO ogrenciler(id,isim,sinav_notu) VALUES
		  (6,'Mustafa',99),
		  (7,'Melisa',11);


SELECT * FROM ogrenciler;

--1-Sadece isim,id kayıtlarını getirelim
SELECT id,isim FROM ogrenciler;

--2-Sinav notu 80 den buyuk olanların tum bilgileri. sarti WHERE ile koyduk
SELECT * FROM ogrenciler WHERE sinav_notu>80;

--3adresi ankara olanların tüm bilgileri
SELECT * FROM ogrenciler WHERE adres='Ankara';

--4sınav notu 80 ve istanbullu olnın ismi
SELECT isim FROM ogrenciler WHERE adres='Istanbul' AND sinav_notu=80;

--5sınav notu 55 veya 100 olanların tüm bilgileri

SELECT * FROM ogrenciler WHERE sinav_notu=100 OR sinav_notu=55;
SELECT * FROM ogrenciler WHERE sinav_notu in (100,55);-- daha iyi
		 
--6-Sinav notu 65 ve 85 arasında olanların tüm bilgileri		  
SELECT * FROM ogrenciler WHERE sinav_notu BETWEEN 65 AND 85; -- en güzeli
	  
--7- id si 3 ve 5 arasında olmayan isim notlarını listele		  
		  
SELECT isim,sinav_notu FROM ogrenciler WHERE id NOT BETWEEN 3 AND 5; -- en güzeli
		  
--8- en yuksek sınav puanı nedir ?
		  
SELECT MAX(sinav_notu) FROM ogrenciler;

 -- SORU9: İzmir'de yaşayan ve sınav notu 50'den yuksek olan öğrencilerin listesi:
		  
SELECT * FROM ogrenciler WHERE adres='Ankara' AND  sinav_notu>50;
	
--10- ogrenci sayisi ve not ortalamasi
SELECT COUNT(*) , AVG(sinav_notu) FROM ogrenciler ;
SELECT COUNT(*) , ROUND(AVG(sinav_notu),2) FROM ogrenciler ;--ROUND==>>yuvarladık

--11- sınav notu 52 olanı sil		  
DELETE  FROM ogrenciler WHERE sinav_notu=55;		  

SELECT * FROM ogrenciler;

--12- ismi --- olanlari sil 
DELETE  FROM ogrenciler WHERE isim='Derya Soylu' OR isim='Yavuz Bal';
DELETE  FROM ogrenciler WHERE isim IN ('Derya Soylu','Zeki');	--atomic	  

--13- ogrenciler tablosunuN icerigini siliniz
DELETE  FROM ogrenciler;-- where ekleyip secmeli silebiliriz		  
TRUNCATE TABLE ogrenciler;--bu veriyi komple goturur geri getirilemez,cok daha hizli siler		  

--14- ogrenciler tablosunu siliniz
DROP TABLE ogrenciler;



		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  