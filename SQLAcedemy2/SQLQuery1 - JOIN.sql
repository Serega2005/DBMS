USE SQLAcademy3;
GO

--INSERT INTO students 
--		(last_name, first_name, middle_name, birth_date, year_of_study, rating, attendance, study_group)
--VALUES 
--		(N'Васильев', N'Сергей', N'Александрович', '1975-12-25', 1, 91, 95, 3),
--		(N'Васильева', N'Маргарита', N'Сергеевна', '1977-11-16', 2, 95, 97, 4)

SELECT MAX(teachers.birth_date) FROM teachers;

SELECT
	last_name+' '+first_name+' '+middle_name,
	birth_date
FROM students
WHERE birth_date < (SELECT MIN(teachers.birth_date) FROM teachers)
--UNION
--SELECT
--	last_name+' '+first_name+' '+middle_name,
--	birth_date
--FROM teachers