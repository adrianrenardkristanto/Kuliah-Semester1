CREATE TABLE Karyawan (
	Id_Karyawan INT PRIMARY KEY , 
	Nama_Depan VARCHAR(30) ,
	Nama_Keluarga VARCHAR(30) , 
	Tanggal_Lahir DATE , 
	Jenis_Kelamin VARCHAR(30) , 
	Gaji INT ,
	Id_Supervisor INT ,
	Id_Cabang INT
);

INSERT INTO karyawan (Id_Karyawan , Nama_Depan , Nama_Keluarga , Tanggal_Lahir , Jenis_Kelamin , Gaji , Id_SUpervisor , Id_Cabang) VALUES (200 , "Jamal" , "Udin" , "2003/10/24" , 'L' , 30500000 , 0 , 1);
INSERT INTO Karyawan (Id_Karyawan , Nama_Depan , Nama_Keluarga , Tanggal_Lahir , Jenis_Kelamin , Gaji , Id_Supervisor , Id_Cabang) VALUES (201 , 'Asep' , 'Petot' , '2002/03/13' , 'L' , 15000000 , 200 , 1);
INSERT INTO Karyawan (Id_Karyawan , Nama_Depan , Nama_Keluarga , Tanggal_Lahir , Jenis_Kelamin , Gaji , Id_Supervisor , Id_Cabang) VALUES (202 , 'Putri' , 'Ayu' , '2003/02/01' , 'P' , 10000000 , 200 , 2);
INSERT INTO Karyawan (Id_Karyawan , Nama_Depan , Nama_Keluarga , Tanggal_Lahir , Jenis_Kelamin , Gaji , Id_Supervisor , Id_Cabang) VALUES (203 , 'Lestari' , 'Utami' , '2004/03/01' , 'P' , 8000000 , 202 , 2);
INSERT INTO Karyawan (Id_Karyawan , Nama_Depan , Nama_Keluarga , Tanggal_Lahir , Jenis_Kelamin , Gaji , Id_Supervisor , Id_Cabang) VALUES (204 , 'Entus' , 'Surentus' , '2001/01/01' , 'L' , 7500000 , 202 , 2);
INSERT INTO Karyawan (Id_Karyawan , Nama_Depan , Nama_Keluarga , Tanggal_Lahir , Jenis_Kelamin , Gaji , Id_Supervisor , Id_Cabang) VALUES (205 , 'Topoy' , 'Popeye' , '2002/02/02' , 'L' , 7000000 , 202 , 2);
INSERT INTO Karyawan (Id_Karyawan , Nama_Depan , Nama_Keluarga , Tanggal_Lahir , Jenis_Kelamin , Gaji , Id_Supervisor , Id_Cabang) VALUES (206 , 'Tika' , 'Utami' , '2003/05/12' , 'P' , 6500000 , 200 , 3);
INSERT INTO Karyawan (Id_Karyawan , Nama_Depan , Nama_Keluarga , Tanggal_Lahir , Jenis_Kelamin , Gaji , Id_Supervisor , Id_Cabang) VALUES (207 , 'Tiko' , 'Saragih' , '2000/07/12' , 'L' , 6000000 , 206 , 3);
INSERT INTO Karyawan (Id_Karyawan , Nama_Depan , Nama_Keluarga , Tanggal_Lahir , Jenis_Kelamin , Gaji , Id_Supervisor , Id_Cabang) VALUES (208 , 'Dino' , 'Ardani' , '2001/08/24' , 'L' , 5500000 , 206 , 3);

CREATE TABLE Cabang (
	id_dabang INT PRIMARY KEY,
	nama_cabang VARCHAR(30) ,
	id_manager INT , 
	tanggal_mulai_manager DATE  
);

INSERT INTO Cabang (id_dabang , nama_cabang , id_manager , tanggal_mulai_manager) VALUES (1 , "Pusat" , 100 , '2016/9/2');
INSERT INTO Cabang (id_dabang , nama_cabang , id_manager , tanggal_mulai_manager) VALUES (2 , "Cabang Bandung" , 102 , '2018/5/4');
INSERT INTO Cabang (id_dabang , nama_cabang , id_manager , tanggal_mulai_manager) VALUES (3 , "Cabang Jakarta" , 106 , '2015/5/5');


CREATE TABLE Produk (
	id_produk INT PRIMARY KEY,
	kategori VARCHAR (30),
	harga INT
);

INSERT INTO Produk (id_produk , kategori , harga) VALUES (111 , "Makanan & Minuman" , 100000);
INSERT INTO produk (id_produk , kategori , harga) VALUES (112 , "Pakaian" , 200000);
INSERT INTO Produk (id_produk , kategori , harga) VALUES (113 , "Perhiasan" , 300000);