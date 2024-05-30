-- EXERCÍCIO 1
SELECT 
	Nome, 
	Ano 
FROM Filmes

-- EXERCÍCIO 2
SELECT 
	Nome, 
	Ano, 
	Duracao 
FROM Filmes
ORDER BY 
	Ano

-- EXERCÍCIO 3
SELECT 
	Nome, 
	Ano, 
	Duracao 
FROM Filmes
WHERE
	LOWER(Nome) = 'de volta para o futuro'

-- EXERCÍCIO 4 
SELECT 
	Nome, 
	Ano, 
	Duracao 
FROM Filmes
WHERE 
	Ano = 1997

-- EXERCÍCIO 5
SELECT 
	Nome, 
	Ano, 
	Duracao 
FROM Filmes 
WHERE 
	Ano > 2000

-- EXERCÍCIO 6
SELECT 
	Nome, 
	Ano, 
	Duracao 
FROM Filmes
WHERE
	Duracao > 100
AND Duracao < 150
ORDER BY
	Duracao

-- EXERCÍCIO 7 
SELECT 
	Ano, 
	COUNT(*) Quantidade
FROM Filmes
GROUP BY
	Ano
ORDER BY
	Quantidade DESC

-- EXERCÍCIO 8
SELECT 
	*
FROM Atores
WHERE 
	Genero = 'M'

-- EXERCÍCIO 9
SELECT *
FROM Atores
WHERE
	Genero = 'F'
ORDER BY
	PrimeiroNome

-- EXERCÍCIO 10
SELECT 
	Nome, 
	Genero 
FROM Filmes
INNER JOIN FilmesGenero 
 ON IdFilme = Filmes.Id
INNER JOIN Generos 
 ON Generos.Id = IdGenero

-- EXERCÍCIO 11
SELECT 
	Nome, 
	Genero 
FROM Filmes
INNER JOIN FilmesGenero 
 ON IdFilme = Filmes.Id
INNER JOIN Generos 
 ON Generos.Id = IdGenero
WHERE
	Genero = 'Mistério'

-- EXERCÍCIO 12
SELECT
	Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
FROM Filmes
INNER JOIN ElencoFilme ON IdFilme = Filmes.Id
INNER JOIN Atores ON Atores.Id = IdAtor
