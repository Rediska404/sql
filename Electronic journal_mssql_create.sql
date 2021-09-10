CREATE TABLE [Teacher] (
	Id_Teacher int NOT NULL,
	Name_Teacher varchar(255) NOT NULL,
	Surname_Teacher varchar(255) NOT NULL,
	Phone_number varchar(15) NOT NULL,
  CONSTRAINT [PK_TEACHER] PRIMARY KEY CLUSTERED
  (
  [Id_Teacher] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Discipline] (
	Id_Discipline int NOT NULL,
	Title varchar(255) NOT NULL,
  CONSTRAINT [PK_DISCIPLINE] PRIMARY KEY CLUSTERED
  (
  [Id_Discipline] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Student] (
	Id_Student int NOT NULL,
	Name_Student varchar(255) NOT NULL,
	Surname_Student varchar(255) NOT NULL,
	Course int NOT NULL,
	Phone_number varchar(15) NOT NULL,
	Specialization varchar(255) NOT NULL,
  CONSTRAINT [PK_STUDENT] PRIMARY KEY CLUSTERED
  (
  [Id_Student] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Evaluation] (
	Id_Evaluation int NOT NULL,
	Teacher int NOT NULL,
	Student int NOT NULL,
	Date date NOT NULL,
	Evaluation int NOT NULL,
  CONSTRAINT [PK_EVALUATION] PRIMARY KEY CLUSTERED
  (
  [Id_Evaluation] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Teacher_Discipline] (
	Id_Teacher_Discipline int NOT NULL,
	Teacher int NOT NULL,
	Discipline int NOT NULL,
  CONSTRAINT [PK_TEACHER_DISCIPLINE] PRIMARY KEY CLUSTERED
  (
  [Id_Teacher_Discipline] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO



ALTER TABLE [Evaluation] WITH CHECK ADD CONSTRAINT [Evaluation_fk0] FOREIGN KEY ([Teacher]) REFERENCES [Teacher_Discipline]([Id_Teacher_Discipline])
ON UPDATE CASCADE
GO
ALTER TABLE [Evaluation] CHECK CONSTRAINT [Evaluation_fk0]
GO
ALTER TABLE [Evaluation] WITH CHECK ADD CONSTRAINT [Evaluation_fk1] FOREIGN KEY ([Student]) REFERENCES [Student]([Id_Student])
ON UPDATE CASCADE
GO
ALTER TABLE [Evaluation] CHECK CONSTRAINT [Evaluation_fk1]
GO

ALTER TABLE [Teacher_Discipline] WITH CHECK ADD CONSTRAINT [Teacher_Discipline_fk0] FOREIGN KEY ([Teacher]) REFERENCES [Teacher]([Id_Teacher])
ON UPDATE CASCADE
GO
ALTER TABLE [Teacher_Discipline] CHECK CONSTRAINT [Teacher_Discipline_fk0]
GO
ALTER TABLE [Teacher_Discipline] WITH CHECK ADD CONSTRAINT [Teacher_Discipline_fk1] FOREIGN KEY ([Discipline]) REFERENCES [Discipline]([Id_Discipline])
ON UPDATE CASCADE
GO
ALTER TABLE [Teacher_Discipline] CHECK CONSTRAINT [Teacher_Discipline_fk1]
GO

