SELECT Nome, Ano FROM filmes;
SELECT Nome, Ano, Duracao FROM filmes ORDER BY Ano ASC;
SELECT * FROM Filmes WHERE Nome = 'De volta para o Futuro';
SELECT * FROM Filmes WHERE Ano = 1997;
SELECT * FROM Filmes WHERE Ano > 2000;
SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;
SELECT Ano,COUNT(*) AS quantidade FROM Filmes GROUP BY Ano
ORDER BY COUNT(*) DESC;
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M';
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;
SELECT f.Nome, g.Genero from Filmes f
INNER JOIN FilmesGenero fg ON f.id = fg.IdFilme
INNER JOIN Generos g ON g.id = fg.idGenero;
SELECT f.Nome, g.Genero from Filmes f
INNER JOIN FilmesGenero fg ON f.id = fg.IdFilme
INNER JOIN Generos g ON g.id = fg.idGenero
WHERE g.genero = 'Mistério';
SELECT f.nome, a.PrimeiroNome, a.UltimoNome, e.Papel
FROM Filmes f
INNER JOIN ElencoFilme e ON f.id = e.IdFilme
INNER JOIN Atores a ON a.id = e.IdAtor;
