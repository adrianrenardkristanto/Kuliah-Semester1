CREATE TABLE Karyawan (
	id_karyawan INT PRIMARY KEY,
	nama_depan VARCHAR (30),
	nama_keluarga VARCHAR (30) ,
	tanggal_lahir DATE,
	jenis_kelamin VARCHAR (30) ,
	gaji INT,
	id_supervisor INT,
	id_cabang INT
);

INSERT INTO Karyawan (id_karyawan , nama_depan , nama_keluarga , tanggal_lahir , jenis_kelamin , gaji , id_supervisor , id_cabang) 
VALUES (100 , "Hadi" , "Abimana" ,  '1970/1/11' , "L" , 30000000 , 0 , 1);
INSERT INTO Karyawan (id_karyawan , nama_depan , nama_keluarga , tanggal_lahir , jenis_kelamin , gaji , id_supervisor , id_cabang) 
VALUES (101 , "Utami" , "Agra" ,  '1980/3/5' , "P" , 10000000 , 100 , 1);
INSERT INTO Karyawan (id_karyawan , nama_depan , nama_keluarga , tanggal_lahir , jenis_kelamin , gaji , id_supervisor , id_cabang) 
VALUES (102 , "Bayu" , "Farrel" ,  '1983/7/7' , "L" , 7500000 , 100 , 2);
INSERT INTO Karyawan (id_karyawan , nama_depan , nama_keluarga , tanggal_lahir , jenis_kelamin , gaji , id_supervisor , id_cabang) 
VALUES (103 , "Tika" , "Levi" ,  '1960/8/12' , "P" , 6500000 , 102 , 2);
INSERT INTO Karyawan (id_karyawan , nama_depan , nama_keluarga , tanggal_lahir , jenis_kelamin , gaji , id_supervisor , id_cabang) 
VALUES (104 , "Retno" , "Wilson" ,  '1975/10/10' , "L" , 66000000 , 102 , 2);
INSERT INTO Karyawan (id_karyawan , nama_depan , nama_keluarga , tanggal_lahir , jenis_kelamin , gaji , id_supervisor , id_cabang) 
VALUES (105 , "Fajar" , "Mateo" ,  '1978/12/10' , "L" , 7000000 , 102 , 2);
INSERT INTO Karyawan (id_karyawan , nama_depan , nama_keluarga , tanggal_lahir , jenis_kelamin , gaji , id_supervisor , id_cabang) 
VALUES (106 , "Wahyu" , "Anindito" ,  '1981/12/10' , "L" , 8000000 , 100 , 3);
INSERT INTO Karyawan (id_karyawan , nama_depan , nama_keluarga , tanggal_lahir , jenis_kelamin , gaji , id_supervisor , id_cabang) 
VALUES (107 , "Agus" , "Darma" ,  '1986/4/9' , "L" , 6000000 , 106 , 3);
INSERT INTO Karyawan (id_karyawan , nama_depan , nama_keluarga , tanggal_lahir , jenis_kelamin , gaji , id_supervisor , id_cabang) 
VALUES (108 , "Tri" , "Emanuel" ,  '1989/12/11' , "L" , 7000000 , 106 , 3);


CREATE TABLE Cabang (
	id_cabang INT PRIMARY KEY,
	nama_cabang VARCHAR (30),
	id_manager INT,
	tanggal_mulai_manager DATE
);

INSERT INTO Cabang (id_cabang , nama_cabang , id_manager , tanggal_mulai_manager) 
VALUES (1 , "Pusat" , 100 ,  '2016/9/2');
INSERT INTO Cabang (id_cabang , nama_cabang , id_manager , tanggal_mulai_manager) 
VALUES (2 , "Cabang Bandung" , 102 ,  '2018/5/4');
INSERT INTO Cabang (id_cabang , nama_cabang , id_manager , tanggal_mulai_manager) 
VALUES (3 , "Cabang Jakarta" , 106 ,  '2015/5/5');


CREATE TABLE Klien (
	id_client INT PRIMARY KEY,
	nama_client VARCHAR (30),
	id_cabang INT
);

INSERT INTO Klien (id_client , nama_client , id_cabang) 
VALUES (400 , "Gibran Ivande" , 2);
INSERT INTO Klien (id_client , nama_client , id_cabang) 
VALUES (401 , "Jeffrey Hadinoto" , 2);
INSERT INTO Klien (id_client , nama_client , id_cabang) 
VALUES (402 , "Julius Hanung" , 3);
INSERT INTO Klien (id_client , nama_client , id_cabang) 
VALUES (403 , "Kristof Kumara" , 3);
INSERT INTO Klien (id_client , nama_client , id_cabang) 
VALUES (404 , "Noah Kanaka" , 2);
INSERT INTO Klien (id_client , nama_client , id_cabang) 
VALUES (405 , "Oliver Lionel" , 3);
INSERT INTO Klien (id_client , nama_client , id_cabang) 
VALUES (406 , "Pradipta Oscar" , 2);


CREATE TABLE Supplier (
	id_cabang INTperusahaan1,
	nama_supplier VARCHAR (30),
	jenis_supply VARCHAR (30) 
);

INSERT INTO Supplier (id_cabang , nama_supplier , jenis_supply) 
VALUES (2 , "Kemajuan Utama" , "Kertas");
INSERT INTO Supplier (id_cabang , nama_supplier , jenis_supply) 
VALUES (2 , "Bara Kahuripan" , "Alat Tulis");
INSERT INTO Supplier (id_cabang , nama_supplier , jenis_supply) 
VALUES (3 , "Makmur Abadijaya" , "Suku Cadang");
INSERT INTO Supplier (id_cabang , nama_supplier , jenis_supply) 
VALUES (2 , "Damai Sejahtera" , "Peralatan Listrik");
INSERT INTO Supplier (id_cabang , nama_supplier , jenis_supply) 
VALUES (3 , "Berkat Indonesia" , "Obat-obatan");
INSERT INTO Supplier (id_cabang , nama_supplier , jenis_supply) 
VALUES (3 , "Boga Selera" , "Makanan Ringan");
INSERT INTO Supplier (id_cabang , nama_supplier , jenis_supply) 
VALUES (3 , "Karyarasa" , "Alat Tulis");


CREATE TABLE Kolaborasi (
	id_karyawan INT,
	id_client INT,
	total_sales INT 
);

INSERT INTO Kolaborasi (id_karyawan , id_client , total_sales) 
VALUES (105 , 400 , 100000000);
INSERT INTO Kolaborasi (id_karyawan , id_client , total_sales) 
VALUES (102 , 401 , 200000000);
INSERT INTO Kolaborasi (id_karyawan , id_client , total_sales) 
VALUES (108 , 402 , 20000000);
INSERT INTO Kolaborasi (id_karyawan , id_client , total_sales) 
VALUES (107 , 403 , 10000000);
INSERT INTO Kolaborasi (id_karyawan , id_client , total_sales) 
VALUES (108 , 403 , 15000000);
INSERT INTO Kolaborasi (id_karyawan , id_client , total_sales) 
VALUES (105 , 404 , 30000000);
INSERT INTO Kolaborasi (id_karyawan , id_client , total_sales) 
VALUES (107 , 405 , 26000000);
INSERT INTO Kolaborasi (id_karyawan , id_client , total_sales) 
VALUES (102 , 406 , 1500000);
INSERT INTO Kolaborasi (id_karyawan , id_client , total_sales) 
VALUES (105 , 406 , 30000000);



