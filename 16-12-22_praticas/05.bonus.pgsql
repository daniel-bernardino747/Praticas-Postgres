SELECT
  schools.name AS school,
  courses.name AS course,
  COUNT("userId") AS studentsCount,
  status
FROM
  educations
INNER JOIN
  schools
ON
  educations."schoolId"=schools.id
INNER JOIN
  courses
ON
  educations."courseId"=courses.id
WHERE
  status='ongoing'
OR
  status='finished'
GROUP BY
  schools.id,
  courses.id,
  status
ORDER BY
  studentsCount DESC
LIMIT
  3;