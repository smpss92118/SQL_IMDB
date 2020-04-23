/*
Select name
From people as P
Where Not Exists((
		Select C.person_id
		From crew as C, people as J
		Where J.name='Jennifer Lawrence' And
			 	J.person_id=C.person_id
		)Except(
		Select C.person_id
		From crew as C ,crew as D
		Where C.title_id = D.title_id
		and P.person_id = D.person_id))
*/		

Select name
From people as P
Where Not Exists((
		Select C.person_id
		From crew as C, people as J
		Where J.name='Jennifer Lawrence' And
			 	J.person_id=C.person_id
		)Except(
		Select C.person_id
		From crew as C
		where P.person_id = C.person_id
		
		))

	/*	
Select name
From people as P
Where Not Exists((
		Select title_id
		From crew as C, people as J
		Where J.name='Jennifer Lawrence' And
			 	J.person_id=C.person_id
		)Except(
		Select C.title_id
		From crew as C,crew as D
		Where C.title_id = D.title_id
		and P.person_id = D.person_id ))
		
		*/
		/*
select P.name
From crew as C, people as P
where P.person_id = C.person_id and 
	(C.title_id = 'tt0605614' AND C.title_id = 'tt1634887')
	*/
		
