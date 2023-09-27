/* 
INSERT INTO Exercise1 (Product, ProductCode, Quantity, Sold, Date)
VALUES 
('Scissors', 'P0008', 145, 54, '01/03/2011'),
('Clipboard', 'P0009', 25, 5, '02/03/2011'),
('Fax', 'P0010', 24, 13, '03/03/2011');
*/ 

/* 
SELECT Product, ProductCode, Quantity, Sold, Date
FROM Exercise1 
WHERE Sold > 50 AND QUANTITY > 50
ORDER BY Product;
*/

/* 
UPDATE Exercise1 
SET Product = 'HAHA' 
WHERE ProductCode = 'P0001';
*/

-- EXPLAIN SELECT * FROM Exercise1 WHERE ProductCode = 'P0001' ;

/*
INSERT INTO SINHVIEN (MaSV, HoTen, MaLop, GioiTinh, NgaySinh, Diachi)
VALUES 
(001, 'Phan Thanh', 'CT12', False, STR_TO_DATE('09/12/1990', '%d/%m/%Y'), 'Tuy Phước'),
(002, 'Nguyễn Thị Cẩm', 'CT12', True, STR_TO_DATE('01/12/1994', '%d/%m/%Y'), 'Quy Nhơn'),
(003, 'Võ Thị Hà', 'CT12', True, STR_TO_DATE('07/02/1995', '%d/%m/%Y'), 'An Nhơn'),
(004, 'Trần Hoài Nam', 'CT12', False, STR_TO_DATE('04/05/1994', '%d/%m/%Y'), 'Tây Sơn'),
(005, 'Trần Văn Hoàng', 'CT13', False, STR_TO_DATE('08/04/1995', '%d/%m/%Y'), 'Vĩnh Thạnh'),
(006, 'Đặng Thị Thảo', 'CT13', True, STR_TO_DATE('06/12/1995', '%d/%m/%Y'), 'Quy Nhơn'),
(007, 'Lê Thị Sen', 'CT13', True, STR_TO_DATE('08/12/1994', '%d/%m/%Y'), 'Phù Cát'),
(008, 'Nguyễn Văn Huy', 'CT11', False, STR_TO_DATE('06/04/1995', '%d/%m/%Y'), 'Phù Mỹ'),
(009, 'Trần Thị Hoa', 'CT11', True, STR_TO_DATE('08/09/1994', '%d/%m/%Y'), 'Hoài Nhơn');
*/

/*
UPDATE SINHVIEN
SET GioiTinh = 
	CASE 
		WHEN GioiTinh = 0 THEN 'Nam'
		WHEN GioiTinh = 1 THEN 'Nữ'
	END;
*/

/*
SELECT MaSV, HoTen, MaLop, NgaySinh, GioiTinh, YEAR(NgaySinh) AS NamSinh
FROM SINHVIEN 
WHERE HoTen NOT LIKE 'N%' OR HoTen NOT LIKE 'L%' OR HoTen NOT LIKE 'T%'
*/

/*
SELECT MaSV, HoTen, MaLop, NgaySinh, GioiTinh, YEAR(NgaySinh) AS NamSinh
FROM SINHVIEN 
WHERE GioiTinh = 'Nam' AND MaLop = 'CT11'
*/

/*
SELECT MaSV, HoTen, MaLop, NgaySinh, GioiTinh
FROM SINHVIEN 
WHERE MaLop = 'CT13' OR MaLop = 'CT11' OR MaLop = 'CT12'
*/

/*
SELECT MaSV, HoTen, MaLop, NgaySinh, GioiTinh, (YEAR(CURRENT_DATE) - YEAR(NgaySinh)) AS Tuổi
FROM SINHVIEN 
WHERE (YEAR(CURRENT_DATE) - YEAR(NgaySinh)) BETWEEN 19 AND 21
*/





