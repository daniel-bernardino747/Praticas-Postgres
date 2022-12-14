SELECT
  users.id,
  users.name,
  companies.name AS company,
  roles.name AS role,
  experiences."startDate"
FROM
  experiences
INNER JOIN
  users
ON
  experiences."userId"=users.id
INNER JOIN
  companies
ON
  experiences."companyId"=companies.id
INNER JOIN
  roles
ON
  experiences."roleId"=roles.id
WHERE
  users.id=50
AND
  experiences."endDate" IS NULL;