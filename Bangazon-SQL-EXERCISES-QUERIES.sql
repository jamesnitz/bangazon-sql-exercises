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
--select pt.Name, Count(c.Id) as Count
--FROM PaymentType pt
--LEFT JOIN Customer c
--ON c.Id = pt.CustomerId
--GROUP BY pt.name

--number 19
--SELECT TOP 10 p.Title, p.Price, CONCAT(c.FirstName, ' ', c.LastName) as seller
--FROM Product p
--LEFT JOIN Customer c
--ON p.CustomerId = c.Id
--ORDER BY Price desc;

--number 20
--SELECT TOP 10 p.Title, p.Price, CONCAT(c.FirstName, ' ', c.LastName) as seller
--FROM Product p
--LEFT JOIN Customer c
--ON p.CustomerId = c.Id
--LEFT JOIN OrderProduct op
--ON op.ProductId = p.Id
--GROUP BY p.Title, P.Price, C.LastName, c.FirstName
--ORDER BY Count(op.ProductId) desc;

--number 21
--SELECT TOP 1 CONCAT(c.FirstName, ' ', c.LastName) as topConsumer
--FROM [Order] o
--LEFT JOIN Customer c
--ON o.CustomerId = c.Id
--LEFT JOIN OrderProduct op
--ON op.OrderId = o.Id
--GROUP BY C.LastName, c.FirstName
--ORDER BY Count(op.ProductId) desc;

--number 22
--select pt.name, Count(p.Id) as Sales 
--FROM ProductType pt
--left join Product p
--ON p.ProductTypeId = pt.Id
--LEFT JOIN OrderProduct op
--ON op.ProductId = p.Id
--GROUP BY pt.Name;


--number 23
SELECT CONCAT(c.FirstName, c.LastName) as FULLNAME, COALESCE(SUM(p.Price),0) as TOTAL
FROM Customer c
LEFT JOIN Product p
ON p.CustomerId = c.Id
LEFT JOIN OrderProduct op
ON p.Id = op.ProductId
GROUP BY c.LastName, c.FirstName
ORDER BY SUM(p.Price) desc;