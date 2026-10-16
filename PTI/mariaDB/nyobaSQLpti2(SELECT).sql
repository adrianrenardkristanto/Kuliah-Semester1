SELECT * 
FROM karyawan
WHERE gaji > 10000000

SELECT COUNT(id_karyawan)
FROM karyawan
WHERE gaji > 10000000

SELECT *
FROM karyawan
WHERE jenis_kelamin = 'P' AND tanggal_lahir > '1980/1/1'

SELECT COUNT(id_karyawan)
FROM karyawan
WHERE jenis_kelamin = 'P' AND tanggal_lahir > '1980/1/1'

SELECT AVG(gaji)
FROM Karyawan

SELECT AVG(gaji)
FROM Karyawan
WHERE jenis_kelamin = 'L'

SELECT SUM(gaji)
FROM Karyawan
WHERE jenis_kelamin = 'L'