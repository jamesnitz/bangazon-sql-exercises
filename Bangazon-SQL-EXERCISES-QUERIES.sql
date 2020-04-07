SELECT e.Id, e.FirstName, e.LastName, e.DepartmentId, d.[Name],
CASE WHEN IsSupervisor = 1 THEN 'TRUE' ELSE 'FALSE' END as IsSupervisor
FROM Employee e
LEFT JOIN Department d
ON DepartmentId = d.Id
ORDER BY Name, LastName, FirstName