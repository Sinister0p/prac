-- Practical 9: database for the Student Record Management page.
-- Run this in SQL Server Management Studio (SSMS) if you want to create it by hand.
-- (Student.aspx also creates it automatically on first load.)

IF DB_ID('CollegeDB') IS NULL
BEGIN
    CREATE DATABASE CollegeDB;
END
GO

USE CollegeDB;
GO

IF OBJECT_ID('dbo.Students', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.Students
    (
        StudentID   INT IDENTITY(1,1) PRIMARY KEY,
        StudentName VARCHAR(100) NOT NULL,
        Course      VARCHAR(50)  NOT NULL,
        Age         INT
    );
END
GO

-- Optional test records
INSERT INTO dbo.Students (StudentName, Course, Age)
VALUES
('Rahul', 'BSc IT', 20),
('Priya', 'BSc CS', 21),
('Amit',  'BCA',    19);
GO

SELECT * FROM dbo.Students;
GO
