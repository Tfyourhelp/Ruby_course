-- Create table:
CREATE TABLE students(
	student_id int,
	student_name varchar(100),
	class_id int
);


CREATE TABLE classes(
	class_id int,
	class_name varchar(100)
);


INSERT INTO students (student_id, student_name, class_id)
VALUES
(1, 'Nguyễn Văn A', 1),
(2, 'Trần Văn B', 3),
(3, 'Lê Thị C', 2),
(4, 'Nguyễn Thị D', 1),
(5, 'Phạm Văn E', 3),
(6, 'Nguyễn Văn F', 2),
(7, 'Lý Thị G', 1),
(8, 'Võ Văn H', 1),
(9, 'Đặng Thị I', 1),
(10, 'Bùi Văn K', 3),
(11, 'Trương Thị L', 1),
(12, 'Đoàn Văn M', 3);


INSERT INTO classes (class_id, class_name)
VALUES
(1, 'Hóa học'),
(2, 'Vật lí'),
(3, 'Toán');


-- Hãy viết câu SQL để đếm số lượng học sinh trong mỗi lớp.
SELECT students.class_id, classes.class_name,  COUNT(*) AS number_students
FROM students
JOIN classes 
ON students.class_id = classes.class_id
GROUP BY students.class_id, classes.class_name

-- Sử dụng dữ liệu từ bài tập 1, viết câu SQL để tìm các lớp học có ít nhất 5 học sinh.
SELECT students.class_id, classes.class_name, COUNT(*) AS number_students
FROM students
JOIN classes 
ON students.class_id = classes.class_id
GROUP BY students.class_id, classes.class_name
HAVING number_students > 5;
