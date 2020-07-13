create database db_novela
use db_novela

create table tbNovela(cod_Novela int primary key,
nome_novela varchar (30),
data_primeiro_capitulo smalldatetime,
data_ultimo_capitulo smalldatetime,
horario_exibicao time)

create table tbAtor(cod_ator int primary key,
nome_ator varchar(30),
data_nasc_ator datetime,
cidade_ator varchar(30) DEFAULT 'Curitiba',
estado_ator char(2) DEFAULT 'PR',
salario_ator money,
sexo_ator char(1) CHECK (sexo_ator IN ('M','F')))

create table tbPersonagem (cod_Personagem int primary key,
nome_personagem varchar(30),
data_nasc_personagem datetime,
situacao_financeira_personagem varchar(20),
cod_ator int foreign key references tbAtor(cod_Ator))

create table tbCapitulo (cod_capitulo int primary key,
nome_capitulo varchar (50),
data_exibicao_capitulo datetime,
cod_novela int foreign key references tbNovela(cod_novela))

create table tbNovelaPersonagem(
cod_novela     int foreign key references tbNovela(cod_novela),
cod_personagem int foreign key references tbPersonagem(cod_Personagem)
primary key (cod_novela, cod_personagem))

insert tbNovela values (1, 'Mistérios de uma Vida','01/02/2010','10/10/2010','20:00')
insert tbNovela values (2, 'O Cravo e a Rosa',     '02/03/2011','11/11/2011','19:00')
insert tbNovela values (3, 'A Favorita',           '05/04/2012','12/11/2012','21:00')
insert tbNovela values (4, 'A Casa das 7 Mulheres','02/02/2013','11/11/2013','18:00')
insert tbNovela values (5, 'Terra Nostra',         '05/05/2014','12/12/2014','13:30')
insert tbNovela values (6, 'Xica da silva',        '2000-02-11','2000-12-15','19:00')
insert tbNovela values (7, 'Caminho da India',     '2001-03-15','2001-12-30','21:00')
insert tbNovela values (8, 'Haja Coração',         '2005-07-11','2008-12-15','18:00')
insert tbNovela values (9, 'Vida em sete Chaves',  '2009-02-11','2010-12-15','15:00')
insert tbNovela values (10,'A lei do amor',        '2003-02-11','2005-12-15','21:00')
insert tbNovela values (11,'Chapolim',             '2002-02-11','2003-12-15', null)

insert into tbAtor values (10, 'Arnildo',          '1980-05-10', 'Guapiranga','SP', 10500.00, 'M')
insert into tbAtor values (20, 'Denis',            '1985-05-20', 'Sapopema'  ,'SP',  8500.00, 'M')
insert into tbAtor values (30, 'Bruna Marquezine', '1990-02-12', 'Guarani',   'SP', 12500.00, 'F')
insert into tbAtor values (40, 'Lavinia',          '1987-04-27', 'Pinhais',   'PR',  5500.00, 'F')
insert into tbAtor values (50, 'Geronimo',         '1978-10-23', 'Colombo',   'PR',  4500.00, 'M')
insert into tbAtor values (60, 'Antonio',          '1998-07-13', 'São José',  'PR',  2500.00, 'M')
insert into tbAtor values (70, 'Fernando Souza',   '1989-07-13', 'Curitiba',  'PR',  4500.00, 'M')

insert into tbCapitulo values (101, 'O encontro', '2000-03-17', 1)
insert into tbCapitulo values (102, 'A disputa', '2001-07-27', 2)
insert into tbCapitulo values (103, 'Guerra de bexiga', '2006-03-07', 3)
insert into tbCapitulo values (104, 'O casamento', '2009-12-17', 4)
insert into tbCapitulo values (105, 'A intriga', '2004-09-11', 5)
insert into tbCapitulo values (106, 'A viagem', '2004-09-11', 5)
insert into tbCapitulo values (107, 'E agora', '2000-09-11', 6)
insert into tbCapitulo values (108, 'Nunca mais', '2001-09-11', 7)
insert into tbCapitulo values (109, 'A Outra', '2005-09-11', 8)
insert into tbCapitulo values (110, 'O Casamento', '2009-09-11', 9)
insert into tbCapitulo values (111, 'A Disputa', '2002-09-09', 11)
insert into tbCapitulo values (112, 'O Fim', '2011-09-11', 2)

insert into tbPersonagem (cod_Personagem, nome_personagem, data_nasc_personagem, situacao_financeira_personagem,cod_ator) values (1001, 'Hernesto', '2000-01-01', 'Classe Alta', 10)
insert into tbPersonagem (cod_Personagem, nome_personagem, data_nasc_personagem, situacao_financeira_personagem,cod_ator) values (1002, 'Leandro',  '2001-02-08', 'Classe Media', 20)
insert into tbPersonagem (cod_Personagem, nome_personagem, data_nasc_personagem, situacao_financeira_personagem,cod_ator) values (1003, 'Juliana',  '2002-03-09', 'Classe Alta', 30)
insert into tbPersonagem (cod_Personagem, nome_personagem, data_nasc_personagem, situacao_financeira_personagem,cod_ator) values (1004, 'Stephani', '2003-04-10', 'Classe Media', 40)
insert into tbPersonagem (cod_Personagem, nome_personagem, data_nasc_personagem, situacao_financeira_personagem,cod_ator) values (1005, 'Lucas',    '2004-05-11', 'Classe Baixa', 50)
insert into tbPersonagem (cod_Personagem, nome_personagem, data_nasc_personagem, situacao_financeira_personagem,cod_ator) values (1006, 'Thiago',   '2005-06-12', 'Classe Alta', 50)
insert into tbPersonagem (cod_Personagem, nome_personagem, data_nasc_personagem, situacao_financeira_personagem,cod_ator) values (1007, 'Thadeu',   '2006-07-01', 'Classe Alta', 20)

insert into tbNovelaPersonagem values (1, 1001)
insert into tbNovelaPersonagem values (2, 1002)
insert into tbNovelaPersonagem values (3, 1003)
insert into tbNovelaPersonagem values (4, 1004)
insert into tbNovelaPersonagem values (5, 1005)
insert into tbNovelaPersonagem values (1, 1003)
insert into tbNovelaPersonagem values (2, 1003)
insert into tbNovelaPersonagem values (5, 1004)
insert into tbNovelaPersonagem values (6, 1003)
insert into tbNovelaPersonagem values (7, 1002)
insert into tbNovelaPersonagem values (8, 1001)
insert into tbNovelaPersonagem values (9, 1005)
insert into tbNovelaPersonagem values (10,1007)

--Utilizando o BD Novela (código de criação disponível), 
--apresente os comandos SQL para as questões abaixo:

--------------------------------Exercicio 1
--Selecione quantos capítulos existem por novela. Retorne
--o nome da novela e a quantidade de capítulos para a
--novela.

SELECT n.nome_novela, COUNT(c.cod_capitulo) 'Capitulos'
FROM tbCapitulo c
INNER JOIN tbNovela n ON n.cod_Novela = c.cod_novela
GROUP BY n.nome_novela


----------------------------------Exercicio 2
--Selecione quantos atores são do sexo feminino.

SELECT COUNT(*) 'Quantidade Atores Sexo Feminino'
FROM tbAtor
WHERE sexo_ator = 'F'
GROUP BY sexo_ator

----------------------------------Exercicio 3
--Faça uma consulta que retorne a idade média dos
--personagens.

SELECT AVG(DATEDIFF(YY,data_nasc_personagem,GETDATE())) 'Idade Média'
FROM tbPersonagem

----------------------------------Exercicio 4--
--Selecione o nome dos atores que têm a mesma idade do
--seu personagem

SELECT a.nome_ator
FROM tbAtor a
INNER JOIN tbPersonagem p ON a.cod_ator = p.cod_ator
WHERE DATEDIFF(YY,data_nasc_personagem,GETDATE()) = DATEDIFF(YY,data_nasc_ator,GETDATE())

SELECT nome_ator 
FROM tbAtor, tbPersonagem 
WHERE DATEDIFF(YY, data_nasc_ator, GETDATE()) = DATEDIFF(YY, data_nasc_personagem, GETDATE());

--Nenhum ator têm a mesma idade do seu personagem!


----------------------------------Exercicio 5
--Encontre o maior e o menor salário.

SELECT MAX(salario_ator) 'Maior Salario', MIN(salario_ator) 'Menor Salario'
FROM tbAtor 

----------------------------------Exercicio 6
--Faça o somatório de todos os salários.

SELECT SUM(salario_ator) 'Soma Salario'
FROM tbAtor

----------------------------------Exercicio 7
--Selecione a quantidade de personagens representados
--para cada ator.

SELECT COUNT(p.cod_Personagem) 'Quantidade de Personagens'
FROM tbPersonagem p 
INNER JOIN tbAtor a ON a.cod_ator = p.cod_ator
GROUP BY a.cod_ator

----------------------------------Exercicio 8
--Encontre o nome de todos os atores que atuaram como
--personagens ricos (situação financeira) em mais de 3
--novelas.

SELECT a.nome_ator
FROM tbAtor a
INNER JOIN tbPersonagem p ON p.cod_ator = a.cod_ator
INNER JOIN tbNovelaPersonagem n ON n.cod_personagem = p.cod_Personagem
WHERE p.situacao_financeira_personagem = 'Classe Alta' 
GROUP BY a.nome_ator
HAVING COUNT(p.cod_Personagem) > 3


----------------------------------Exercicio 9
--Liste os atores que ainda não têm personagens
--cadastrados.

SELECT a.nome_ator FROM  tbAtor a
WHERE NOT EXISTS (SELECT p.cod_ator 
					FROM tbPersonagem p
					WHERE p.cod_ator = a.cod_ator)

----------------------------------Exercicio 10
--Liste os atores e a quantidade de novelas em que já
--participaram.

SELECT a.nome_ator, COUNT(nov.cod_Novela) 'Quantidade de Novelas que participou'
FROM tbAtor a
INNER JOIN tbPersonagem p ON p.cod_ator = a.cod_ator
INNER JOIN tbNovelaPersonagem n ON n.cod_personagem = p.cod_Personagem
INNER JOIN tbNovela nov ON nov.cod_Novela = n.cod_novela
GROUP BY a.nome_ator

----------------------------------Exercicio 11
--Liste o nome e idade dos atores que participaram da
--novela “A Favorita”.

SELECT a.nome_ator,
DATEDIFF(YY,data_nasc_ator,GETDATE()) 'Idade'
FROM tbAtor a
INNER JOIN tbPersonagem p ON a.cod_ator = p.cod_ator
INNER JOIN tbNovelaPersonagem n ON n.cod_personagem = p.cod_Personagem
INNER JOIN tbNovela nov ON nov.cod_Novela = n.cod_novela
WHERE nov.nome_novela = 'A Favorita'

----------------------------------Exercicio 12
--Liste o nome dos atores que trabalharam em pelo menos
--uma novela das 18 horas.

SELECT a.nome_ator
FROM tbAtor a
INNER JOIN tbPersonagem p ON a.cod_ator = p.cod_ator
INNER JOIN tbNovelaPersonagem n ON n.cod_personagem = p.cod_Personagem
INNER JOIN tbNovela nov ON nov.cod_Novela = n.cod_novela
WHERE DATEPART(HOUR,(nov.horario_exibicao)) = 18


----------------------------------Exercicio 13
--Liste o nome dos atores que não trabalharam em nenhuma novela

SELECT a.nome_ator
FROM tbAtor a
LEFT JOIN tbPersonagem p ON p.cod_ator = a.cod_ator
WHERE p.cod_Personagem IS NULL



----------------------------------Exercicio 14
--Liste o nome e idade dos atores que participarem da nova "A Favorita"

SELECT a.nome_ator,
DATEDIFF(YY,data_nasc_ator,GETDATE()) 'Idade'
FROM tbAtor a
INNER JOIN tbPersonagem p ON a.cod_ator = p.cod_ator
INNER JOIN tbNovelaPersonagem n ON n.cod_personagem = p.cod_Personagem
INNER JOIN tbNovela nov ON nov.cod_Novela = n.cod_novela
WHERE nov.nome_novela = 'A Favorita'


----------------------------------Exercicio 15
--Liste o nome dos atores que tiveram personagens com o nome de "Lucas"

SELECT a.nome_ator 
FROM tbAtor a
INNER JOIN tbPersonagem p ON p.cod_ator = a.cod_ator
WHERE nome_personagem = 'Lucas'

----------------------------------Exercicio 16
--Liste o nome dos atores que trabalharam nas mesmas novelas que a atriz "Bruna Marquezine"

SELECT a.nome_ator 
FROM tbAtor a 
INNER JOIN tbPersonagem p ON p.cod_ator = a.cod_ator   
INNER JOIN TbNovelaPersonagem np ON np.cod_personagem = p.cod_personagem 
WHERE  np.cod_novela in(SELECT DISTINCT cod_novela
FROM tbNovelaPersonagem np 
INNER JOIN tbPersonagem p ON p.cod_personagem = np.cod_personagem 
INNER JOIN tbAtor a ON a.cod_ator = p.cod_ator 
WHERE a.nome_ator = 'BRUNA MARQUEZINE' ) AND a.nome_ator != 'Bruna Marquezine'


----------------------------------Exercicio 17
--Liste o nome e idade do personagem mais novo

SELECT nome_personagem, (SELECT MIN(DATEDIFF(YY,data_nasc_personagem,GETDATE())) 
						 FROM tbPersonagem p) 'Idade'
FROM tbPersonagem 
WHERE DATEDIFF(YY,data_nasc_personagem,GETDATE()) = (SELECT MIN(DATEDIFF(YY,data_nasc_personagem,GETDATE()))
													 FROM tbPersonagem p) 
												
----------------------------------Exercicio 18
--Liste a quantidade de atores por cidade e estado

SELECT cidade_ator, estado_ator, COUNT(cod_ator) 'Quantidade de Atores' 
FROM tbAtor
GROUP BY cidade_ator, estado_ator


----------------------------------Exercicio 19
--Liste o nome dos atores que nunca participaram de novelas depois das 19horas

SELECT nome_ator FROM tbAtor
WHERE cod_ator NOT IN (SELECT  DISTINCT p.cod_ator
					   FROM tbNovela n INNER JOIN tbNovelaPersonagem np ON np.cod_novela = n.cod_Novela
                       INNER JOIN tbPersonagem p ON p.cod_Personagem = np.cod_personagem
                       INNER JOIN tbAtor a ON a.cod_ator = p.cod_ator
                       WHERE DATEPART(HOUR,(horario_exibicao)) >= 19)

----------------------------------Exercicio 20
--Liste o nome e salários dos atores que ganham mais do que a média salarial dos atores

SELECT nome_ator 
FROM tbAtor
WHERE salario_ator > (SELECT AVG(salario_ator)
FROM tbAtor)