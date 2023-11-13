use RainbowSchool;
go

create table classes(
classId int Primary Key ,
className varchar(50)
)


create table student(
studentId int primary key,
FirstName varchar(50),
LastName varchar (50),
ClassId int constraint FK_student_class foreign key REFERENCES classes(classId)
)

use RainbowSchool;
go

CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY IDENTITY(1,1),
    SubjectName NVARCHAR(50),
    TeacherName NVARCHAR(50)
);

ALTER TABLE Student
ADD SubjectID INT,
CONSTRAINT FK_Student_Subject FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID);




