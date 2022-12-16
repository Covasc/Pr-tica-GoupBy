-- Questão 1:
SELECT COUNT("endDate") FROM experiences;

-- Questão 2:
SELECT "userId" AS id, COUNT(id) AS educations FROM educations GROUP BY "userId";

-- Questão 3:
SELECT
	users.name AS name,
	COUNT(*) AS testimonialCount
FROM testimonials 
JOIN users ON testimonials."writerId" = users.id 
WHERE users.id = 435
GROUP BY users.id;

-- Questão 4:
SELECT
	MAX(jobs.salary) AS maximumSalary,
	roles.name AS role
FROM roles
JOIN jobs ON roles.id = jobs."roleId"
WHERE jobs.active = true
GROUP BY roles.id
ORDER BY maximumSalary ASC;

-- 