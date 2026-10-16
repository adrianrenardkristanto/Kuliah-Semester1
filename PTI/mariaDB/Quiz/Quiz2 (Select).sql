1. Tampilkan nama depan dan nama belakang dari semua mahasiswa dalam basis_data.
SELECT first_name, last_name
FROM students;

2. Tampilkan semua mata kuliah beserta nama dan jumlah kreditnya.
SELECT *
FROM courses;

3. Hitunglah jumlah mahasiswa laki-laki dalam basis_DATA.
SELECT COUNT(student_id)
FROM students
WHERE gender = 'Male';

4. Tampilkan nama-nama mata kuliah yang memiliki lebih dari 3 pendaftar.
SELECT course_name
FROM courses
WHERE courses.course_id IN (
SELECT enrollments.course_id
FROM enrollments
WHERE enrollments.student_id > 3
GROUP BY enrollments.course_id
);

5. Tampilkan Daftar nama lengkap mahasiswa yang mendaftar dalam mata kuliah matematika
SELECT students.student_id,students.first_name, students.last_name
FROM students
WHERE students.student_id IN (
SELECT enrollments.student_id
FROM enrollments
WHERE enrollments.course_id = 1
);

6. Tampilkan nama depan dan nama belakang mahasiswa perempuan.
SELECT first_name, last_name
FROM students
WHERE gender = 'Female';

7. Tampilkan daftar semua mata kuliah yang memiliki lebih dari 2 kredit.
SELECT course_name
FROM courses
WHERE credits > 2;

8. Cari nama-nama mahasiswa laki-laki yang mendaftar setidaknya dalam dua mata kuliah.
SELECT students.student_id,students.first_name, students.last_name
FROM students
WHERE students.gender = 'Male' AND (
SELECT COUNT(enrollments.student_id)
FROM enrollments
WHERE enrollments.student_id >= 2
);

9. Tampilkan mata kuliah yang tidak memiliki pendaftar.
SELECT courses.course_name
FROM courses
WHERE NOT EXISTS (
SELECT enrollments.course_id
FROM enrollments
WHERE enrollments.course_id = courses.course_id
);

10. Cari mata kuliah dengan jumlah pendaftar terbanyak dan tampilkan nama mata kuliah serta jumlah pendaftarnya.
SELECT courses.course_name, COUNT(enrollments.student_id) AS jumlah_pendaftar
FROM courses
LEFT JOIN enrollments ON courses.course_id = enrollments.course_id
GROUP BY courses.course_name
ORDER BY jumlah_pendaftar DESC 
LIMIT 1;

