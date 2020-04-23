select name
from crew, people,ratings
where crew.category = 'composer' and crew.title_id = ratings.title_id
	and ratings.rating >=8
	and crew.person_id = people.person_id
	
group by people.person_id
having count(*) >10

order by people.name