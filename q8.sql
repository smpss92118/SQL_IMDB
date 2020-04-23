
select gp.born,gp.name,bp.name
from people as gp, people as bp,crew as gc,crew as bc/*,akas as ga,akas as ba*/
where gp.born = bp.born 
	and gp.person_id = gc.person_id and gc.category = 'actress'
	/*and gc.title_id = ga.title_id*/
	and bp.person_id = bc.person_id and bc.category = 'actor'
	/*and bc.title_id = ba.title_id*/
	/*and ga.title = ba.title*/
	and gc.title_id = bc.title_id /*title or title_id要用哪一個*/
group by gp.person_id,bp.person_id
order by gp.born ,gp.name, bp.name

/*
Select FP.name, MP.name, FP.born
From people As FP, people as MP, crew As FC, crew As MC
Where FP.born=MP.born And
		FP.person_id=FC.person_id And MP.person_id=MC.person_id And
		MC.title_id=FC.title_id And
		FC.category='actress' And MC.category='actor'
Group by FP.person_id, MP.person_id
Order by FP.born, FP.name, MP.name
*/