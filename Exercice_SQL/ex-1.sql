SELECT
  EmployeeId,
  CONCAT_WS(' ', FirstName,LastName) FullName
FROM
  employees;