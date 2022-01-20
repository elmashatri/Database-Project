create database projekti;
use projekti;

create database projekti;
create table lexuesit (
idle integer,
emri char(15) not null,
Mbiemri char(15) not null,
E_Prindit char(40) not null,
gjinia char(1) not null,
data_lindjes varchar (20) not null,
Adressa varchar(40) not null,
Tel varchar(20) not null,
Email varchar (30) not null,
profesioni varchar(12) not null,
vendbanimi varchar (15) not null,
primary key (idle));
INSERT INTO lexuesit() values('10000','James','Smith','John','M','12/12/1985','Lombard Street 7/4','044-111-222','James.45@gmail.com','Doctor','Prishtinë');
INSERT INTO lexuesit() values ('12000','Robert','Johnson','Daniel','M','1/10/1995','Fifth Avenue 8/9','045-122-665','Robert.45@gmail.com','Chef','Prizren');
INSERT INTO lexuesit() values('13000','Olivia','Williams','Mathew','F','2/5/2000','Santa Monica 12/88','049-458-897','Olivia.45@gfail.cof','Teacher','Gjakovë');
INSERT INTO lexuesit() values('14000','Michael','Brown','Anthony','M','12/5/1989','Ginza 00/1','049-852-258','Michael.45@gmail.com','Pharmacist','Lipjan');
INSERT INTO lexuesit() values('15000','William','Jones','Mark','M','25/8/1999','Beala Street 8/7','043-159-951','William.45@gmail.com','Footballer','Ferizaj');
INSERT INTO lexuesit() values('16000','Ava','Garcia','Donald','F','31/5/1996','Bourbon Street 8/7','045-152-263','Ava.45@gfail.cof','Engineer','Pejë');
INSERT INTO lexuesit() values('17000','Amelia','Miler','Steven','F','21/12/1989','Via Napoleone 17/8','043-895-741','Amelia.45@gfail.cof','Programer','Prizren');
INSERT INTO lexuesit() values('19000','Joseph','Garcia','Paul','M','23/8/1994','Hollywood Walk 78/5','049-965-856','Joseph.45@gmail.com','Influencer','Prishtinë');
INSERT INTO lexuesit() values('20000','Thomas','Miler','Andrew','M','13/6/1985','ABBEY Road 85/7','045-897-856','Thomas.45@gmail.com','Teacher','Prizren');
INSERT INTO lexuesit() values('21000','Isabella','Davis','Joshua','F','18/5/2002','Lombard Street 45/8','045-652-365','Isabella.45@gfail.cof','Student','Mitrovic');
/*1Listoni të gjithë lexuesit që janë nga qyteti i Prishtinës.*/
Select L.emri,l.mbiemri
From lexuesit L
Where L.vendbanimi='Prishtinë';

 

/**funksion**/
SELECT LENGTH(emri) AS LengthOfName
FROM lexuesit;
 create table libri (
 idli integer,
 titulli varchar(25),
 autori char (25),
 zhanri char (15),
 numri_kopjeve integer,
 data_e_pranimit varchar(20),
 p_pergjegjes char (20),
 primary key (idli));
 INSERT INTO libri() values('1000','Të Mjerët','Victor Hugo','Roman','150','5/12/2021','Elma Shatri');
 INSERT INTO libri() values('1200','Plaku dhe Deti','Ernest Hemingway','Roman','220','5/12/2021','Elma Shatri');
 INSERT INTO libri() values('1300','Bagëti e Bujqësi','Naim Frashëri','Poemë','25','5/5/2021','Endrit Gashi');
 INSERT INTO libri() values('1400','C++ for Beginners','Will John','Programim','156','26/6/2021','Elma Shatri');
INSERT INTO libri() values('1500','Java OBT','Maria Philips','Programim','582','30/9/2021','Endrit Gashi');
INSERT INTO libri() values('1600','Historia 5','Hamit Hoxha','Shkencë','600','15/6/2021','Elma Shatri');
INSERT INTO libri() values('1700','Fizika 1','Skënder Ahmeti','Shkencë','123','7/12/2021','Elma Shatri');
INSERT INTO libri() values('1800','Data-Baza','Lule Ahmedi','Programim','156','16/9/2021','Endrit Gashi');
INSERT INTO libri() values('1900','Odisea','Homeri','Roman','354','6/12/2021','Endrit Gashi');
INSERT INTO libri() values('2000','Pse?','Sterjo Spasse','Roman','125','13/10/2021','Elma Shatri');

 create table huazimi (
 
 libri char (15),
 lexuesi char (15),

 data_e_leshimit date,
 data_kthimit date,
 Pergjegjes char (15),
 Verejtje char (15)
 );
INSERT INTO huazimi() values('Data-Baza','James John','2020-6-5 ','2020-6-20','Elma Shatri','Me vonesë');
INSERT INTO huazimi() values('Odisea','James John','2020-7-5 ','2020-7-20','Elma Shatri','Me vonesë');
INSERT INTO huazimi() values('Odisea','Ava Garcia','2021-5-10','2020-5-25','Endrit Gashi','E dëmtuar');
INSERT INTO huazimi() values('Fizika 2','Thomas Miler','2020-10-7','2020-10-22','Endrit Gashi','Me vonesë');
INSERT INTO huazimi() values('Data-Baza','Davis Joshua',' 2021-3-8 ','2021-3-23','Elma Shatri','Me vonesë');
INSERT INTO huazimi() values('C++','William Johns','2021-5-6','2021-5-21','Elma Shatri','E dëmtuar');
INSERT INTO huazimi() values('Pse?','Isabella Davis','2020-5-2','2020-5-17','Endrit Gashi','E dëmtuar');
INSERT INTO huazimi() values('Java','Joseph Garcia',' 2021-7-5','2021-7-20','Endrit Gashi','Me vonesë');
INSERT INTO huazimi() values('Të mjerët','Amelia Miler','2021-12-6','2021-12-21','Elma Shatri','E dëmtuar');
/* 2.Cilët lexues (Emri dhe Mbiemri) kanë huazuar të paktën dy libra gjatë vitit 2020? */
Select h.lexuesi
From huazimi h
Where(h.data_e_leshimit>=2020-01-01)
GROUP BY h.lexuesi
HAVING COUNT(*) >= 2;
/*3Listoni lexuesit që kanë vonuar kthimin e librit në afatin 15 ditësh për vitin 2020 ose 2021 */
Select H.lexuesi 
From huazimi H
Where (H.data_e_leshimit>='2020-01-01' and H.data_e_leshimit<='2021-12-31' AND H.verejtje='Me vonesë');

/*4 Listoni ID-te dhe titullin e librave qe ne vitin 2019 ose 2020 jane
huazur se paku nje here kurse ne vitin 2021 asnjehere . */
select	h.libri
from huazimi h
where (h.data_e_leshimit>='2019-01-01' and h.data_e_leshimit<='2020-12-31' );


/*5. Listoni top 5 lexuesit me numrin me te madh te huazimeve ne 3
muajt e fundit. Lista te paraqes te dhenat e lexusit duke perfshire*/
select h.lexuesi 
from huazimi h 
where DATE_ADD(h.data_e_leshimit,INTERVAL 90 DAY  ) LIMIT 5;


 create table punëtori(
 idp int,
 emri char(15),
 Mbiemri char (15),
 Titulli char (25),
 Adressa varchar (30),
 telefoni varchar (20),
 email char(30),
 paga varchar(13),
 primary key (idp));
 INSERT INTO Punëtori() values('1','Elma','Shatri','Koordinatore e shitjes','Muharrem Fejza 10020','044-142-365','elma8@gmail.com','300 euro');
INSERT INTO Punëtori() values('2','Endrit','Gashi','Koordinator i shitjes','Bekim Berisha 7/4 1000','043-569-743','Endrit@gmail.com','300 euro');
INSERT INTO Punëtori() values('3','Driton','Krasniqi','Kontabilist','Ulpiana 10050','045-226-659','Driton@gmail.com','420 euro');
INSERT INTO Punëtori() values('4','Doruntina','Sylejmani','Menaxhere','Xheladin Rekaliu 10010','049-879-999','Dorutina@gmail.com','400 euro');
INSERT INTO Punëtori() values('5','Kristina','Gashi','Sekretare','Xheladin Rekaliu 10010','043-452-987','Kristina@gmail.com','300 euro');



create table Autorët(
ida integer,
emri char(20),
mbiemri char(20),
nr_huazimeve integer);

INSERT INTO Autorët() values ('1','Victor','Hugo','20');
INSERT INTO Autorët() values ('2','Ernest','Hemingway','16');
INSERT INTO Autorët() values ('3','Naim','Frashëri','54');
INSERT INTO Autorët() values ('4','Will','John','29');
INSERT INTO Autorët() values ('5','Maria','Philips','21');
INSERT INTO Autorët() values ('6','Hamiti','Hoxha','22');
INSERT INTO Autorët() values ('7','Skender','Ahmeti','39');
INSERT INTO Autorët() values ('8','Lule','Ahmedi','57');
INSERT INTO Autorët() values ('9','Homer','xxxxx','84');
INSERT INTO Autorët() values (10,'Sterjo','Spasse','20');

/**6. Gjeni shumen e fituar nga te gjitha anetaresimet, te ndare ne vite**/
select SUM(l.cmimi) as shuma,l.v_regj as viti
from detajet_e_lexuesit l where (l.v_regj=2019 ) UNION select SUM(l.cmimi) as shuma,l.v_regj as viti
from detajet_e_lexuesit l where (l.v_regj=2020 ) union select SUM(l.cmimi) as shuma,l.v_regj as viti
from detajet_e_lexuesit l where (l.v_regj=2021 );


create table detajet_e_lexuesit (
idle integer,
v_regj integer,
data_e_regjistrimit varchar(18),
cmimi integer,
p_pergjegjes varchar (20),
active varchar(2),
foreign key (idle) references lexuesit (idle)) ;

INSERT INTO detajet_e_lexuesit() values ('10000','2021','8-Qershor','5 ','Endrit Gashi','PO');
INSERT INTO detajet_e_lexuesit() values ('12000','2021','5-Korrik','5 ','Elma Shatri','JO');
INSERT INTO detajet_e_lexuesit() values ('13000','2019','12-Janar','7 ','Endrit Gashi','PO');
INSERT INTO detajet_e_lexuesit() values ('14000','2017','16-Shtator','7 ','Endrit Gashi','PO');
INSERT INTO detajet_e_lexuesit() values ('15000','2015','12-Janar','5 ','Elma Shatri','PO');
INSERT INTO detajet_e_lexuesit() values ('16000','2020','15-Tetor','5 ','Elma Shatri','JO');
INSERT INTO detajet_e_lexuesit() values ('17000','2021','6-Maj','7 ','Elma Shatri','PO');
INSERT INTO detajet_e_lexuesit() values ('19000','2016','9-Shkurt','7 ','Endrit Gashi','JO');
INSERT INTO detajet_e_lexuesit() values ('20000','2018','5-Qershor','7 ','Endrit Gashi','PO');
INSERT INTO detajet_e_lexuesit() values ('21000','2014','6-Maj','5 ','Elma Shatri','PO');

 create table Arkiva (
 idle integer,
 emri char (20),
 mbiemri char (20),
 libri_i_huazuar char (20),
 foreign key (idle) references lexuesit (idle)
 );
 SET FOREIGN_KEY_CHECKS=0;
 INSERT INTO Arkiva() values('1300','Olivia','Williams','Odisea');
INSERT INTO Arkiva() values('1500','William','Mathew','C++ for Beginners');
INSERT INTO Arkiva() values('1900','Joseph','Garcia','Të Mjerët');
INSERT INTO Arkiva() values('1300','Olivia','Williams','Fizika 2');
INSERT INTO Arkiva() values('1200','Robert','Johnson','Java OBT');
INSERT INTO Arkiva() values('1500','Ava','Garcia','Data-Baza');
INSERT INTO Arkiva() values('1300','Olivia','Williams','Odisea');
INSERT INTO Arkiva() values('1400','Michael','Brown','C++ for Beginners');
INSERT INTO Arkiva() values('1000','Jame','Smith','Hisyoria 5');

 
create table librat_e_demtuar(
 idle integer,
libri char(25),
 Data_e_regjistrimit varchar(15),
 p_pergjegjes char(15),
 vërejtje char(25),
 foreign key (idle) references lexuesit (idle)
 );
 
 INSERT INTO librat_e_demtuar() values('1900','Odisea','12/5/2021','Elma Shatri','Kopertina e Demtuar');
INSERT INTO librat_e_demtuar() values('1600','Histori','13/6/2021','Elma Shatri','Shënime me Kimik');
INSERT INTO librat_e_demtuar() values('1000','Të Mjerët','12/5/2021','Endrit Gashi','Libri jo i njejt');
INSERT INTO librat_e_demtuar() values('1400','C++ for beginers','21/8/2020','Elma Shatri','Shenimet me kimik');
/**9. Cili eshte autori me i preferuar nga lexuesit?**/
SELECT MAX(a.nr_huazimeve) as TopAutori, a.emri,a.mbiemri
from autorët a;
/**Një funksion**/
SELECT length(emri) AS LengthofName
from lexuesit;

/** view nr1**/
CREATE VIEW READERS_PROFESION AS
SELECT emri,Mbiemri
FROM lexuesit
WHERE profesioni='Student';

/**view nr2**/
CREATE VIEW GENDER AS
SELECT emri,Mbiemri
FROM lexuesit
WHERE gjinia='F';

/** Stored Procedure nr1**/
delimiter //

 CREATE PROCEDURE GetAllBooks()
       BEGIN
         SELECT *from libri;
        
       END//


 delimiter ;

/**stored procedure nr2**/
delimiter //

 CREATE PROCEDURE SelectAllReaders()
       BEGIN
         SELECT *from lexuesit;
        
       END//


 delimiter ;

//*trigger nr1**/
delimiter $$
create trigger lexuesit_trig before insert on lexuesit
for each row
begin
SET NEW.emri=UPPER(NEW.emri);
SET NEW.Mbiemri=UPPER(NEW.emri);
end $$
delimiter $$;


/**trigger  nr2**/
delimiter $$
create trigger lexuesit_trim before insert on lexuesit 
for each row 

begin 
set NEW.emri=TRIM(NEW.emri);
set NEW.Mbiemri=TRIM(NEW.Mbiemri);END $$
 delimiter $$;

	
/*8. Gjeni top librin me te lexuar per vitin aktual.*/
SELECT MAX(s.nrshitjeve) as Toplibri, s.titulli
from statistika s;



create table statistika(
idli integer,
titulli varchar(30),
nrshitjeve integer,

primary key (idli)

);



 












 
 



