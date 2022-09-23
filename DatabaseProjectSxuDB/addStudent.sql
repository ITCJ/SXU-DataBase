-- Write your own SQL object definition here, and it'll be included in your package.

USE SxuDB;


-- ALter TABLE Student ADD S_entrance DATE; -- 添加入学时间
-- ALTER TABLE Student ALTER COLUMN Sage INT;   -- 修改列类型
-- ALTER TABLE Course ALTER COLUMN Ccredit SMALLINT;   -- 修改列类型
-- ALTER TABLE Course ADD UNIQUE(Cname); -- 增加约束条件：课程名需唯一


/** 3.3.3 索引
*/


-- CREATE UNIQUE INDEX Stusno ON Student(Sno); --创建索引
-- CREATE UNIQUE INDEX Coucno ON Course(Cno);
-- CREATE UNIQUE INDEX SCno ON SC(Sno ASC, Cno DESC);

-- ALTER INDEX SCno RENAME TO SSCno; -- 修改 无法使用

-- DROP INDEX Stusname;

/** 3.4 数据查询
*/

-- SELECT Sdept, Sno, Sname    -- 列
-- FROM Student;

-- SELECT *
-- FROM Student;

-- SELECT Sname, 2014-Sage -- 计算值
-- FROM Student;

-- SELECT Sname, 'Year of Birth:', 2014-Sage, LOWER(Sdept)
-- FROM Student;

-- SELECT Sname Name, 'Year of Birth:' Birth, 2014-Sage Birthday,
--         LOWER(Sdept) Department -- 查询标题别名
-- FROM Student;

-- SELECT DISTINCT Sno -- 去除重复行，默认关键字all
-- FROM SC;

-- SELECT Sname -- 满足条件
-- FROM Student
-- WHERE Sdept='CS';

-- SELECT Sname
-- FROM Student
-- WHERE Sage < 20;

-- SELECT Sno
-- FROM SC
-- WHERE Grade < 60;

-- SELECT Sname, Sdept, Sage
-- FROM Student
-- WHERE Sage BETWEEN 20 AND 23;
-- WHERE Sage >= 20 AND Sage <= 23;
-- WHERE Sdept IN ('CS', 'MA', 'IS');
-- WHERE Sdept NOT IN ('SC', 'MA', 'IS');

-- SELECT * 
-- FROM Student
-- WHERE Sno LIKE '201215121' -- 等价 Sno = '201215121'
-- WHERE Sname LIKE '刘%';
-- WHERE Sname LIKE '_'; -- 一个 '_' 对应一个字符
-- WHERE Sname NOT LIKE '刘%'

-- SELECT *
-- FROM Course
-- WHERE Cname Like 'P_SCAL_';
-- WHERE Cname Like 'P_SCAL%';

-- SELECT *
-- FROM SC
-- WHERE Grade IS NOT NULL;

/* ORDER BY */
-- SELECT Sno, Grade
-- FROM SC
-- WHERE Cno='3'
-- ORDER BY Grade DESC;
-- ORDER BY Grade ASC;


-- SELECT *
-- FROM Student
-- ORDER BY Sdept, Sage DESC;

/* 聚集函数 
COUNT(*) 元组
COUNT([DISTINCT|ALL] <列名>) 列中值的个数
SUM AVG MAX MIN

*/

-- SELECT COUNT(*) 总人数
-- FROM Student;

-- SELECT COUNT(DISTINCT Sno) 选课人数
-- FROM SC;

-- SELECT AVG(Grade) 课程1均分
-- -- SELECT MAX(Grade) 课程1最7高分
-- FROM SC
-- WHERE Cno = '3';

-- SELECT SUM(Ccredit)
-- FROM SC, Course
-- WHERE Sno='201215121' AND SC.Cno=Course.Cno;

SELECT Cno, COUNT(Sno)
FROM SC
GROUP BY Cno;


/** 3.5 数据更新
INSERT
INTO <表名> [( <属性列1> [, <属性列2>, ...] )]
VALUE (<常量1> [, <常量2>, ...] )

-- -- Insert rows into table 'TableName'
-- INSERT INTO TableName
-- ( -- columns to insert data into
--  [Column1], [Column2], [Column3]
-- )
-- VALUES
-- ( -- first row: values for the columns in the list above
--  Column1_Value, Column2_Value, Column3_Value
-- ),
-- ( -- second row: values for the columns in the list above
--  Column1_Value, Column2_Value, Column3_Value
-- )
-- -- add more rows here
-- GO
*/


-- INSERT INTO Student
--     (Sno, Sname, Ssex, Sage, Sdept)
-- VALUES
    -- ('201215121', '李勇', '男', 20, 'CS'),
    -- ('201215122', '刘晨', '女', 19, 'CS'),
    -- ('201215123', '王敏', '女', 28, 'MA'),
    -- ('201215125', '张立', '男', 19, 'IS')

-- DELETE FROM Student
-- WHERE Sno='201215121'


-- INSERT INTO Course
--     (Cno, Cname, Ccredit)
-- VALUES
    -- ('2', '数学', '2'),
    -- ('6', '数据处理', '2')

-- INSERT INTO Course
--     (Cno, Cname, Cpno, Ccredit)
-- VALUES
    -- ('1', '数据库',  '5', 4)
    -- ('2', '数学', , '2'),
    -- ('3', '信息系统', '1', 4)
    -- ('4', '操作系统', '6', 3)
    -- ('5', '数据结构', '7', 4)
    -- ('7', 'PASCAL语言', '6', 4)


-- INSERT INTO SC
--     (Sno, Cno, Grade)
-- VALUES
--     ('201215121', '1', 92)
    -- ('201215121', '2', 85),
    -- ('201215121', '3', 88),
    -- ('201215122', '2', 90),
    -- ('201215122', '3', 80)

