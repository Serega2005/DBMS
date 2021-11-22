USE SQLAcademy3;

SELECT
	last_name+' '+first_name+' '+middle_name AS N'��������',
	birth_date,
	N'�������' AS N'������'
FROM students
WHERE MONTH(birth_date) > 8 AND MONTH(birth_date) < 12
UNION
SELECT
	last_name+' '+first_name+' '+middle_name AS N'��������',
	birth_date,
	N'�������������' AS N'������'
FROM teachers
WHERE MONTH(birth_date) BETWEEN 9 AND 11