SELECT name 
FROM crew, people, akas, titles
where titles.genres Like '%Action%' and titles.premiered <=2000 
	and titles.premiered >=1991 and titles.title_id = akas.title_id 
	and akas.region = 'JP' and akas.title_id = crew.title_id
	and crew.category = 'actress' and people.person_id = crew.person_id
GROUP BY name, crew.person_id
having Count(*) >=1
order by name

