-- Questão 1

SELECT COUNT ("endDate") AS "currentExperiences"
FROM experiences;

-- Questão 2

SELECT users.id, COUNT (educations.id) AS "educations"
FROM educations
JOIN users
ON educations."userId" = users.id
GROUP BY users.id;

-- Questão 3

SELECT users.name AS writer, COUNT (testimonials."writerId") AS testimonialCount
FROM testimonials
JOIN users
ON testimonials."writerId" = users.id
WHERE users.id = 435
GROUP BY users.name;

-- Questão 4

SELECT MAX(jobs.salary) AS maximumSalary, roles.name AS role 
FROM jobs
JOIN roles
ON jobs."roleId" = roles.id
GROUP BY role
ORDER BY maximumSalary ASC;