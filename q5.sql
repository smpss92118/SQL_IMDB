/*
select A.name, X.title_id, B.name,Y.title_id
from people as A,people as B, crew as X, crew as Y
where A.name = 'Robert Downey Jr.' 
	and A.person_id = X.person_id
	and X.title_id = Y.title_id
	and Y.category = 'actress'
	and Y.person_id = B.person_id
order by B.name
*/

select count(DISTINCT B.name)
from people as A,people as B, crew as X, crew as Y
where A.name = 'Robert Downey Jr.' 
	and A.person_id = X.person_id
	and X.title_id = Y.title_id
	and Y.category = 'actress'
	and Y.person_id = B.person_id

