--SELECT e.Id, e.FirstName, e.LastName, e.DepartmentId, d.[Name],
--CASE WHEN IsSupervisor = 1 THEN 'TRUE' ELSE 'FALSE' END as IsSupervisor
--FROM Employee e
--LEFT JOIN Department d
--ON DepartmentId = d.Id
--ORDER BY Name, LastName, FirstName

--SELECT Name, Budget
--FROM Department
--ORDER BY Budget desc;

--SELECT d.[Name], CONCAT(e.FirstName, ' ', e.LastName) as FullName
--FROM Department d
--LEFT JOIN Employee e
--On d.Id = e.DepartmentId
--Where e.IsSupervisor = 'True'

--SELECT d.[Name], Count(e.DepartmentId) as EmployeeCount
--From department d
--LEFT JOIN Employee e
--ON d.Id = e.DepartmentId
--Group BY e.DepartmentId, Name

--UPDATE Department
--SET Budget = Budget * 20;

--SELECT CONCAT(e.FirstName, ' ', e.LastName) as FullName
--FROM Employee e
--LEFT JOIN EmployeeTraining et
--ON et.EmployeeId = e.Id
--WHERE et.EmployeeId Is Null;

--SELECT CONCAT(e.FirstName, ' ', e.LastName) as FullName, Count(et.Id) ProgramsEnrolledIn
--FROM Employee e
--LEFT JOIN EmployeeTraining et
--ON et.EmployeeId = e.Id
--WHERE et.EmployeeId IS NOT NULL
--GROUP BY e.FirstName, e.LastName

--Number 8
--SELECT t.[Name], Count(et.EmployeeId) SignUps
--FROM TrainingProgram t
--LEFT JOIN EmployeeTraining et
--ON et.TrainingProgramId = t.Id
--GROUP BY Name

--number 9
--SELECT t.[Name]
--FROM TrainingProgram t
--LEFT JOIN EmployeeTraining et
--ON et.TrainingProgramId = t.Id
--GROUP BY Name, MaxAttendees
--HAVING Count(et.EmployeeId) = t.MaxAttendees

--number 10
--SELECT t.[Name], t.StartDate
--FROM TrainingProgram t
--WHERE StartDate > GETDATE()
--Order BY StartDate 

--number 11
--INSERT INTO EmployeeTraining(EmployeeId, TrainingProgramId)
--VALUES(20, 5)
--INSERT INTO EmployeeTraining(EmployeeId, TrainingProgramId)
--VALUES(21, 5)
--INSERT INTO EmployeeTraining(EmployeeId, TrainingProgramId)
--VALUES(22, 5)


--number 12 
--SELECT TOP 3 t.[Name], Count(et.EmployeeId)
--FROM TrainingProgram t
--LEFT JOIN EmployeeTraining et
--ON et.TrainingProgramId = t.Id
--GROUP BY t.Id, Name
--ORDER BY COUNT(et.EmployeeId) desc;

----number 13
--SELECT TOP 3 t.[Name], Count(et.EmployeeId)
--FROM TrainingProgram t
--LEFT JOIN EmployeeTraining et
--ON et.TrainingProgramId = t.Id
--GROUP BY Name
--ORDER BY COUNT(et.EmployeeId) desc;

--number 14
--SELECT CONCAT(e.FirstName, ' ', e.LastName) as FullName
--FROM Employee e
--LEFT JOIN ComputerEmployee c
--ON c.EmployeeId = e.Id
--WHERE c.ComputerId IS NULL;

--number 15
--SELECT CONCAT(e.FirstName, ' ', e.LastName) as FullName, Coalesce((c.Manufacturer + ' ' + c.Make), 'N/A') as ComputerInfo
--FROM Employee e
--LEFT JOIN ComputerEmployee ce
--ON ce.EmployeeId = e.Id
--LEFT JOIN Computer c
--ON ce.ComputerId = c.Id
--WHERE c.DecomissionDate IS NULL;

--number 16
--select Concat(Manufacturer, ' ', Make) as ComputerInfo
--from Computer
--where purchaseDate < CONVERT(datetime,'2019-07-01') and DecomissionDate is NULL

--number 17
--SELECT CONCAT(e.FirstName, ' ', e.LastName) as FullName, COUNT(c.Id) as ComputerCount
--FROM Employee e
--LEFT JOIN ComputerEmployee ce 
--ON e.Id = ce.EmployeeId 
--left join Computer c
--ON ce.ComputerId = c.Id 
--GROUP BY e.FirstName, e.LastName;

--number 18

