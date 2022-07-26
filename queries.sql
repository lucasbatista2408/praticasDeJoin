// QUESTÃO 1
SELECT users.id as id, users.name as name, cities.name as name FROM cities
JOIN users
ON users."cityId" = cities.id;

//QUESTÃO 2
SELECT testimonials.id as id, users.name as writer, r.name as recipient, testimonials.message as message FROM testimonials
JOIN users
ON users.id = testimonials."writerId"
JOIN users as r
ON r.id = testimonials."recipientId"
ORDER BY id ASC;

// QUESTÃO 3
SELECT educations.id as id, users.name as name, schools.name as school, courses.name as course, educations."endDate" as endDate FROM educations JOIN users 
ON users.id = educations."userId"
JOIN schools
ON schools.id = educations."schoolId"
JOIN courses
ON courses.id = educations."courseId"
WHERE "userId"=30
AND status LIKE 'finished';

// QUESTÃO 4
SELECT users.id as id, users.name as name, companies.name as company, roles.name as role, experiences."startDate" FROM experiences JOIN users
ON users.id = experiences."userId"
JOIN companies
ON companies.id = experiences."companyId"
JOIN roles
ON roles.id = experiences."roleId"
WHERE "userId"=50
AND experiences."endDate" IS NULL;