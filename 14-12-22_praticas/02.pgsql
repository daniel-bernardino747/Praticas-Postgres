SELECT
  testimonials.id,
  writers.name AS writer,
  recipients.name AS recipient,
  testimonials.message
FROM
  testimonials
INNER JOIN
  users AS writers
ON
  testimonials."writerId"=writers.id
INNER JOIN
  users AS recipients
ON
  testimonials."recipientId"=recipients.id;