SELECT
  MAX("salary") AS "maximumSalary",
  roles.name AS role
FROM
  jobs
INNER JOIN
  roles
ON
  jobs."roleId"=roles.id
GROUP BY
  roles.id
ORDER BY
  "maximumSalary" ASC;