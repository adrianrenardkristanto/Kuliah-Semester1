SELECT *
FROM karyawan
ORDER BY Tanggal_Lahir
DESC 


SELECT * FROM karyawan ORDER BY Gaji DESC
LIMIT 5


SELECT * FROM karyawan ORDER BY Gaji ASC
LIMIT 3


SELECT Nama_Depan, Nama_Keluarga, gaji 
FROM karyawan
LIMIT 5


SELECT DISTINCT id_cabang FROM cabang1


SELECT COUNT(id_karyawan) FROM karyawan;



SELECT COUNT(id_supervisor) FROM karyawan;


SELECT COUNT(Jenis_Kelamin) FROM karyawan 
WHERE Jenis_Kelamin = 'L';



SELECT * FROM karyawan 
WHERE gaji > 9500000;

SELECT COUNT(gaji) FROM karyawan 
WHERE gaji > 9500000;



SELECT COUNT(Tanggal_Lahir) FROM karyawan 
WHERE Jenis_Kelamin = 'P' AND Tanggal_Lahir > 2002-08-12;



SELECT * FROM karyawan 
WHERE Jenis_Kelamin = 'P' AND Tanggal_Lahir > 2002-08-12;



SELECT AVG(gaji)
FROM karyawan;



SELECT AVG(gaji)
FROM karyawan
WHERE Jenis_Kelamin ='L';


SELECT SUM(gaji)
FROM karyawan
WHERE Jenis_Kelamin ='L';



SELECT SUM(gaji)
FROM karyawanc


