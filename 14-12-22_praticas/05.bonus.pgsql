SELECT
  schools.id,
  schools.name AS school,
  courses.name AS course,
  companies.name AS company,
  roles.name AS role
FROM
  applicants
INNER JOIN
  jobs
ON
  applicants."jobId"=jobs.id
INNER JOIN
  educations
ON
  applicants."userId"=educations."userId"
INNER JOIN
  schools
ON
  educations."schoolId"=schools.id
INNER JOIN
  courses
ON
  educations."courseId"=courses.id
INNER JOIN
  companies
ON
  jobs."companyId"=companies.id
INNER JOIN
  roles
ON
  jobs."roleId"=roles.id
WHERE
  companies.id=10
AND
  jobs.active=true;