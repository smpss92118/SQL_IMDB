
select op.name
from people as sp, people as op,crew as sc, crew as oc
where sp.name = 'Jennifer Lawrence' and sp.person_id = sc.person_id
	and sc.title_id = oc.title_id and oc.person_id = op.person_id
	
group by op.person_id
order by name
	
/*	
select title_id
from people ,crew
where name = 'Jennifer Lawrence' and people.person_id = crew.person_id 
*/
										 
