SELECT
  users.id,
  users.name AS name,
  courses.name AS course,
  schools.name AS school,
  educations."endDate"
FROM
  educations
INNER JOIN
  users
ON
  educations."userId"=users.id
INNER JOIN
  courses
ON
  educations."courseId"=courses.id
INNER JOIN
  schools
ON
  educations."schoolId"=schools.id
WHERE
  users.id = 30
AND
  educations.status='finished';