-- 1
SELECT 
	Nome,
	Ano
FROM Filmes

-- 2
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano ASC

-- 3
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
Where Nome = 'De Volta para o Futuro'

-- 4 
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
Where Ano = '1997'

-- 5
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
Where Ano > 2000

-- 6 
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
Where Duracao > 100
ORDER BY Duracao ASC

-- 7 
SELECT
	Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

--8
SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'

--9 
SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

--10
SELECT
    Filmes.Nome,
    Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme 
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id 

-- 11
SELECT
    Filmes.Nome,
    Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme 
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id 
WHERE Genero = 'Mistério'

--12
SELECT
    Filmes.Nome,
    Atores.PrimeiroNome,
	Atores.UltimoNome,
	Elencofilme.Papel
FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id

