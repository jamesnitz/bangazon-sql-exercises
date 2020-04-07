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


