
select name,born
from people, crew,titles
where crew.title_id is not null and crew.category = 'actor'
	and crew.person_id = people.person_id and crew.title_id = titles.title_id
	and titles.premiered <= people.born+20 
	group by people.person_id
order by name

