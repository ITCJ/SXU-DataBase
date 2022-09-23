USE SxuDB;

-- --中文支持
-- ALTER DATABASE SxuDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE 
-- ALTER  database SxuDB  collate Chinese_PRC_CI_AS
-- ALTER DATABASE SxuDB SET MULTI_USER

-- CREATE TABLE Student
-- (
--     Sno CHAR(9) PRIMARY KEY,
--     Sname CHAR(20) UNIQUE,
--     Ssex CHAR(2),
--     Sage SMALLINT,
--     Sdept CHAR(20)
-- );

-- CREATE TABLE Course
-- (
--     Cno CHAR(4) PRIMARY KEY,
--     Cname CHAR(40) Not NULL,
--     Cpno CHAR(4),
--     Ccredit SMALLINT,
--     FOREIGN KEY (Cpno) REFERENCES Course(Cno)
-- );

-- CREATE TABLE SC
-- (
--     Sno CHAR(9),
--     Cno CHAR(4),
--     Grade SMALLINT,
--     PRIMARY KEY (Sno, Cno),
--     FOREIGN KEY (Sno) REFERENCES Student(Sno),
--     FOREIGN KEY (Cno) REFERENCES Course(Cno)
-- );