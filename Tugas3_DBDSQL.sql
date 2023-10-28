create database SCHEMA_AKADEMIK;

use SCHEMA_AKADEMIK;

create table FAKULTAS(
	ID_FAKULTAS smallint not null,
	FAKULTAS VARCHAR(45) not null,
	primary KEY(ID_FAKULTAS)
);

create table JURUSAN (
	ID_JURUSAN smallint not null,
	ID_FAKULTAS smallint not null,
	JURUSAN VARCHAR(45) not null,
	primary KEY(ID_JURUSAN),
	foreign KEY(ID_FAKULTAS) references FAKULTAS(ID_FAKULTAS)
);

create table STRATA (
	ID_STRATA smallint not null,
	SINGKAT VARCHAR(10) not null,
	STRATA VARCHAR(45) not null,
	primary KEY(ID_STRATA)
);

create table PROGRAM_STUDI (
	ID_PROGRAM_STUDI smallint not null,
	ID_STRATA smallint not null,
	ID_JURUSAN smallint not null,
	PROGRAM_STUDI VARCHAR(60),
	primary KEY(ID_PROGRAM_STUDI),
	foreign key(ID_STRATA) references STRATA(ID_STRATA),
	foreign KEY(ID_JURUSAN) references JURUSAN(ID_JURUSAN)
);

create table SELEKSI_MASUK (
	ID_SELEKSI_MASUK smallint not null,
	SINGKAT VARCHAR(12) not null,
	SELEKSI_MASUK VARCHAR(45) not null,
	primary KEY(ID_SELEKSI_MASUK)
);

create table MAHASISWA (
	NIM VARCHAR(15) not null,
	ID_SELEKSI_MASUK smallint not null,
	ID_PROGRAM_STUDI smallint not null,
	NAMA VARCHAR(45) not null,
	ANGKATAN smallint not null,
	TGL_LAHIR DATE not null,
	KOTA_LAHIR VARCHAR(60),
	JENIS_KELAMIN CHAR(1),
	constraint chk_JENIS_KELAMIN check (JENIS_KELAMIN in ('P','L')),
	primary KEY(NIM),
	foreign KEY(ID_SELEKSI_MASUK) references SELEKSI_MASUK(ID_SELEKSI_MASUK),
	foreign KEY(ID_PROGRAM_STUDI) references PROGRAM_STUDI(ID_PROGRAM_STUDI)
);

select * from FAKULTAS;

insert into FAKULTAS (ID_FAKULTAS,FAKULTAS)
values (1,'Ekonomi & Bisnis');

insert into FAKULTAS (ID_FAKULTAS,FAKULTAS)
values (2,'Ilmu Komputer');

select * from JURUSAN;

insert into JURUSAN (ID_JURUSAN,ID_FAKULTAS,JURUSAN)
values (21,2,'Informatika'),
(22,2,'Sistem Informasi'),
(23,2,'Teknik Komputer');

select * from STRATA;

insert into STRATA (ID_STRATA,SINGKAT,STRATA)
values (1,'D1','Diploma'),
(2,'S1','Sarjana'),
(3,'S2','Magister');

select * from PROGRAM_STUDI;

insert into PROGRAM_STUDI (ID_PROGRAM_STUDI,ID_STRATA,ID_JURUSAN,PROGRAM_STUDI)
values (211,2,21,'Teknik Informatika'),
(212,2,21,'Teknik Komputer'),
(219,3,21,'Magister Ilmu Komputer');

ALTER TABLE SELEKSI_MASUK MODIFY SELEKSI_MASUK VARCHAR(60);

SHOW COLUMNS FROM SELEKSI_MASUK;

select * from SELEKSI_MASUK;

insert into SELEKSI_MASUK (ID_SELEKSI_MASUK,SINGKAT,SELEKSI_MASUK)
values (1,'SNMPTN','SELEKSI NASIONAL MAHASISWA PERGURUAN TINGGI NEGERI'),
(2,'SBMPTN','SELEKSI BERSAMA MAHASISWA PERGURUAN TINGGI NEGERI');

select * from MAHASISWA;

insert into MAHASISWA (NIM,ID_SELEKSI_MASUK,ID_PROGRAM_STUDI,NAMA,ANGKATAN,TGL_LAHIR,KOTA_LAHIR,JENIS_KELAMIN)
values ('155150400',1,211,'JONI',2015,'1997-1-1','Malang','W'),
('155150401',2,212,'JONO',2015,'1997-10-2','Situbondo','P');

ALTER TABLE MAHASISWA DROP CONSTRAINT chk_JENIS_KELAMIN;

ALTER TABLE MAHASISWA ADD CONSTRAINT chk_JENIS_KELAMIN CHECK (JENIS_KELAMIN IN ('W', 'P'));