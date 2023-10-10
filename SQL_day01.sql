--TEK SATIR YORUMU
/*COKLU SATIR YORUMU*/
-----------------DAY'1 NT------------------
--1-Database olusturma
CREATE DATABASE mustafa;--SQL komutlarında büyük/küçük harf duyarlılığı yoktur.
create database mustafa2;

--2-database silme--DDL
DROP DATABASE mustafa2;--noktalı virgül sart degil. okunur olsun diye.

--3-tablo olusturma
CREATE TABLE students(
id CHAR(4), 
name VARCHAR(20),
grade REAL,
register_date DATE--isimlendirmede bosluk yok ve alt cizgi kullan.
);

--4-mevcut bir tablodan yeni bir tablo oluşturma
CREATE TABLE grades AS SELECT name,grade FROM students;

--5-tabloya data ekleme
INSERT INTO students VALUES('1001','mustafa kara',99.8,'1993-05-19');--birden fazla sorguyu aynı andan calıştırmak için noktalı virgül saarttt
INSERT INTO students VALUES('1002','burcu kara',99.9,now());

--6-tablodaki tüm dataları görüntüleme read
SELECT * FROM students;

--7-tabloda ki bazı sütunlara data eklemek istersek
INSERT INTO students (name,grade) VALUES('mubu',100.0);

--8-tabloda belirli sütunlarda ki dataları görüntüleme yapmak
SELECT name,grade FROM students;


/*------------------------------------
ÖDEVV:)
1) Tablo Oluşturma
​
“tedarikciler” isminde bir tablo olusturun,
“tedarikci_id”, “tedarikci_ismi”, “tedarikci_adres”
ve “ulasim_tarihi”	field’lari olsun. 
​
2) Var olan tablodan yeni tablo olusturmak 
 “tedarikci_info” isminde bir tabloyu  “tedarikciler” tablosundan olusturun.
Icinde “tedarikci_ismi”, “ulasim_tarihi” field’lari olsun
​
3) Data ekleme
“ ogretmenler” isminde tablo olusturun.
 Icinde “kimlik_no”, “isim”, “brans” ve “cinsiyet” field’lari olsun.
“ogretmenler” tablosuna bilgileri asagidaki gibi olan kisileri ekleyin.
kimlik_no: 234431223, isim: Ayse Guler, brans : Matematik, cinsiyet: kadin.
kimlik_no: 234431224, isim: Ali Guler, brans : Fizik, cinsiyet: erkek.
​
4) bazı fieldları olan kayıt ekleme
“ogretmenler” tablosuna bilgileri asagidaki gibi olan bir kisi ekleyin.
kimlik_no: 567597624, isim: Veli Guler
--------------------------------------*/


CREATE TABLE tedarikciler(
tedarikci_id INTEGER,
tedarikci_ismi VARCHAR(20),
tefarikci_adres VARCHAR(20),
ulasim_tarihi DATE);

SELECT * FROM tedarikciler;

CREATE TABLE tedarikci_info AS SELECT tedarikci_ismi,ulasim_tarihi FROM tedarikciler;

SELECT * FROM tedarikci_info;

INSERT INTO tedarikciler VALUES('720','td01','esenyurt',now());

CREATE TABLE ogretmenler(
kimlik_no INTEGER,
isim CHAR(20),
brans CHAR(15),
cinsiyet CHAR(5)
);


INSERT INTO ogretmenler VALUES (234431223,'Ayse Guler','Matematik','Kadin');
INSERT INTO ogretmenler VALUES (234431224,'Ali Guler','Fizik','Erkek');

SELECT * FROM ogretmenler;

INSERT INTO ogretmenler(kimlik_no,isim) VALUES(567597624,'Veli Guler');









