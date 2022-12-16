SELECT
  u.name AS writer,
  COUNT("writerId") AS "testimonialsCount"
FROM
  testimonials t
INNER JOIN
  users u
ON
  t."writerId"=u.id
WHERE
  t."writerId"=435
GROUP BY
  u.id;
