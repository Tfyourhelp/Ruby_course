-- Create database:
CREATE DATABASE lession_mysql;
USE lession_mysql;

-- Create table:
CREATE TABLE STUDENT(
	id int,
	name varchar(100),
	age int,
	class_id int
);

CREATE TABLE CLASS(
	id int,
	name varchar(100),
	major_id int
);

CREATE TABLE MAJOR(
	id int,
	name varchar(100)
);

-- Thực hiện tạo bảng và insert dữ liệu mẫu
INSERT INTO STUDENT (id, name, age, class_id)
VALUES
(1, 'Nguyễn Văn A', 21, 5),
(2, 'Trần Văn B', 21, 3),
(3, 'Lê Thị C', 21, 2),
(4, 'Nguyễn Thị D', 21, 1),
(5, 'Phạm Văn E', 21, 6),
(6, 'Nguyễn Văn F', 21, 4);

INSERT INTO CLASS (id, name, major_id)
VALUES
(1, 'Hóa học', 1),
(2, 'Vật lí', 1),
(3, 'Toán', 1),
(4, 'CTDL', 2),
(5, 'CSDL', 2),
(6, 'Giải tích mạch', 3),
(7, 'Vật lí bán dẫn', 3),
(8, 'Pháp luật', 5);

INSERT INTO MAJOR (id, name)
VALUES
(1, 'KHỨD'),
(2, 'KHMT'),
(3, 'Đ-ĐT'),
(4, 'KTHH');

-- Viết câu lệnh xuất ra thông tin học sinh và tên lớp
SELECT STUDENT.id, STUDENT.name, STUDENT.age, STUDENT.class_id, CLASS.name
FROM STUDENT
INNER JOIN CLASS
ON STUDENT.class_id = CLASS.id
ORDER BY STUDENT.id;

-- Viết câu lệnh xuất ra thông tin học sinh, tên lớp và tên ngành học tương ứng
SELECT STUDENT.id, STUDENT.name, STUDENT.age, STUDENT.class_id, CLASS.name as class, MAJOR.name as major
FROM STUDENT
INNER JOIN CLASS
ON STUDENT.class_id = CLASS.id
INNER JOIN MAJOR
ON CLASS.major_id = MAJOR.id
ORDER BY STUDENT.id;

-- Viết câu lệnh xuất ra danh sách lớp học không có học sinh
SELECT  CLASS.name as class, STUDENT.id, STUDENT.name, STUDENT.age, STUDENT.class_id
FROM CLASS
LEFT JOIN STUDENT
ON STUDENT.class_id = CLASS.id
WHERE STUDENT.name IS NULL
ORDER BY STUDENT.id

-- Viết câu lệnh xuất ra thông tin lớp học thuộc ngành IT
SELECT  CLASS.id, CLASS.name, CLASS.major_id , MAJOR.name as major
FROM CLASS
INNER JOIN MAJOR
ON CLASS.major_id = MAJOR.id
WHERE MAJOR.name = 'KHMT';

-- Image1 
SELECT  *
FROM CLASS
LEFT JOIN MAJOR
ON CLASS.major_id = MAJOR.id
WHERE MAJOR.id IS NULL

-- Image 2
SELECT *
FROM CLASS
RIGHT JOIN MAJOR
ON CLASS.major_id = MAJOR.id
WHERE CLASS.id IS NULL

