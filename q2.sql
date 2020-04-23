SELECT AVG(rating)
FROM ratings, people, crew
WHERE people.name = 'Robert Downey Jr.' and people.person_id = crew.person_id and crew.title_id = ratings.title_id
