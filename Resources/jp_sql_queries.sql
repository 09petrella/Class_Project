-- CREATE TABLE new_movies_data AS
-- 	(SELECT movies.index, 
-- 	 	movies.name, 
-- 	 	movies.rating, 
-- 	 	movies.genre, 
-- 	 	movies.year, 
-- 	 	movies.released, 
-- 	 	movies.score, 
-- 	 	movies.votes,
-- 	 	movies.director, 
-- 	 	movies.writer, 
-- 	 	movies.star, 
-- 	 	movies.country,
-- 	 	movies.budget, 
-- 	 	movies.gross, 
-- 	 	movies.company, 
-- 	 	movies.runtime,
-- 		numbers.original_title,
-- 		numbers.production_budget,
-- 		numbers.worldwide_gross
-- 	FROM numbers
-- 	INNER JOIN movies
-- 	ON numbers.original_title = movies.name);

-- DROP TABLE movies_data;
-- ALTER TABLE new_movies_data RENAME TO movies_data;

SELECT * FROM movies_data;

-- UPDATE movies_data set budget = production_budget
-- WHERE budget is null;

-- UPDATE movies_data set gross = worldwide_gross
-- WHERE gross is null;