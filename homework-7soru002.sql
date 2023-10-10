CREATE TABLE calisanlar2
(id CHAR(5),
 name VARCHAR(50),
 maas int,
 CONSTRAINT calisanlar2_id_pk PRIMARY KEY(id)
 );
 
INSERT INTO calisanlar2 
VALUES(10001, 'Ali Can', 12000),
      (10002, 'Veli Han', 2000),
      (10003, 'Mary Star', 7000),
      (10004, 'Angie Ocean', 8500);
 
 
-- 1) En yüksek maas
SELECT MAX (maas) FROM calisanlar2;
-- 2) En düşük maaş
SELECT MIN (maas) FROM calisanlar2;
 
--3) En yüksek 2. maaş
SELECT  maas 
FROM calisanlar2 
ORDER BY maas 
DESC LIMIT 1 OFFSET 1;
--4) En düşük 2. maaş
SELECT maas 
FROM calisanlar2 
ORDER BY maas 
DESC LIMIT 1 OFFSET 1;
 
-- 5) En yüksek 3. maaş
SELECT  maas 
FROM calisanlar2 
ORDER BY maas 
DESC LIMIT 1 OFFSET 2;

 
-- 6) En düşük 3. maaş
SELECT maas 
FROM calisanlar2 
ORDER BY maas 
DESC LIMIT 1 OFFSET 3;

-- 7) Interview Question: En yüksek maaş alan çalışan bilgileri
SELECT  * 
FROM calisanlar2 
ORDER BY maas 
DESC LIMIT 1 ;

-- 8) Interview Question: En düşük maaş alan calısan bilgileri 
SELECT  * 
FROM calisanlar2 ,
ORDER BY maas --maas a göre sırala
ASC LIMIT 1 OFFSET 0 ;
 
-- 9) En yüksek 3. maaşı alan calisan bilgileri
SELECT  * 
FROM calisanlar2 
ORDER BY maas 
DESC LIMIT 1 OFFSET 2 ;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 