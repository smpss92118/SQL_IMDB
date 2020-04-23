SELECT premiered, Count(*) AS "number of comedy movies in each year"
FROM titles
WHERE titles.genres Like '%Comedy%' and titles.premiered is not null
GROUP BY premiered
ORDER BY titles.premiered