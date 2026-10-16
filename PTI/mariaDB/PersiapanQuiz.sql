1. Seluruh informasi tentang karyawan
Seluruh informasi tentang karyawan
SELECT * 
FROM employee;


Seluruh informasi tentang clien
SELECT *
FROM client;

2. Seluruh informasi dari tabel tertentu
SELECT * 
FROM employee
ORDER BY salary DESC; //order_by artinya yang menjadi patokan


SELECT *
FROM employee
ORDER BY sex, first_name, last_name;

 
3. Menampilkan informasi dengan ketentuan lainnya
SELECT *
FROM employee
LIMIT 5;


SELECT first_name, last_name
FROM employee;


SELECT DISTINCT branch_id
FROM employee;


4. MENCARI JUMLAH KARYAWAN DARI TABEL KARYAWAN 
SELECT COUNT(emp_id) //select_count = jumlah
FROM employee;


5. Mencari jumlah supervisor dari tabel karyawan
SELECT COUNT(super_id)
FROM employee;


6. Mencari jumlah karyawan pria
SELECT COUNT(emp_id)
FROM employee
WHERE sex = 'M';


7. Mencari jumlah karyawan wanita yang lahir setelah tahun 1980
SELECT COUNT(emp_id)
FROM employee
WHERE sex = 'F' AND birth_day > '1980-01-01';


8. Menghitung rata-rata gaji karyawan
SELECT AVG(salary)
FROM employee;


9. MEnghitung rata-rata gaji karyawan pria
SELECT AVG(salary)
FROM employee
WHERE sex = 'M';


10. total pengeluaran gaji perusahaan
SELECT SUM(salary)
FROM employee;


11. Jumlah penjualan per karyawan. Tampilkan per karyawan
SELECT SUM(total_sales), emp_id
FROM works_with
GROUP BY emp_id;


12. Cari nama seluruh karyawan yang dapat menjual lebih dari 30 juta terhadap 1 clien. Tampilkan id dan nama karyawan
SELECT employee.emp_id, employee.first_name, employee.last_name
FROM employee 
WHERE employee.emp_id IN(
SELECT works_with.emp_id
FROM works_with
WHERE works_with.total_sales > 30000
);


13. Carilah seluruh clien yang ditangani oleh manager 102
SELECT client.client_id, client.client_name
FROM client
WHERE client.branch_id =(
SELECT branch.branch_id
FROM branch
WHERE branch.mgr_id = 102
);