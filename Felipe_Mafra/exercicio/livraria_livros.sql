CREATE DATABASE LIVRARIA;

USE LIVRARIA;

CREATE TABLE LIVROS(
    LIVRO VARCHAR(100),
    AUTOS VARCHAR(100),
    SEXO CHAR(1),
    PAGINAS INT(5),
    EDITORA VARCHAR(30),
    VALOR FLOAT(10, 2),
    UF CHAR(2),
    ANO INT(4)
);

INSERT INTO LIVROS VALUES('CAVALEIRO REAL', 'ANA CLAUDIA', 'F', 465, 'ATLAS', 49.9, 'RJ', 2009),
						 ('SQL PARA LEIGOS', 'JOAO NUNES', 'M', 210, 'ADDISON', 98, 'SP', 2018),
						 ('RECEITAS CASEIRAS', 'CELIA TAVARES', 'F', 210, 'ATLAS', 45, 'RJ', 2008),
						 ('PESSOAS EFETIVAS', 'EDUARDO SANTOS', 'M', 390, 'BETA', 78.99, 'RJ', 2018),
						 ('HABITOS SAUDAVEIS', 'EDUARDO SANTOS', 'M', 630, 'BETA', 150.98, 'RJ', 2019),
						 ('A CASA MARROM', 'HERMES MACEDO', 'M', 250, 'BUBBA', 60, 'MG', 2016),
						 ('ESTACIO QUERIDO', 'GERALDO FRANCISCO', 'M', 310, 'INSIGNIA', 100, 'ES', 2015),
						 ('PRA SEMPRE AMIGAS', 'LEDA SILVA', 'F', 510, 'INSIGNIA', 78.98, 'ES', 2011),
						 ('COPAS INESQUECIVEIS', 'MARCO ALCANTARA', 'M', 200, 'LARSON', 130.98, 'RS', 2018),
						 ('O PODER DA MENTE', 'CLARA MAFRA', 'F', 120, 'CONTINENTAL', 56.58, 'SP', 2017);

/* RESOLVENDO OS EXERCÍCIOS */

-- TRAZER TODOS OS DADOS

SELECT * FROM LIVROS;

+---------------------+-------------------+------+---------+-------------+--------+------+------+
| LIVRO               | AUTOR             | SEXO | PAGINAS | EDITORA     | VALOR  | UF   | ANO  |
+---------------------+-------------------+------+---------+-------------+--------+------+------+
| CAVALEIRO REAL      | ANA CLAUDIA       | F    |     465 | ATLAS       |  49.90 | RJ   | 2009 |
| SQL PARA LEIGOS     | JOAO NUNES        | M    |     210 | ADDISON     |  98.00 | SP   | 2018 |
| RECEITAS CASEIRAS   | CELIA TAVARES     | F    |     210 | ATLAS       |  45.00 | RJ   | 2008 |
| PESSOAS EFETIVAS    | EDUARDO SANTOS    | M    |     390 | BETA        |  78.99 | RJ   | 2018 |
| HABITOS SAUDAVEIS   | EDUARDO SANTOS    | M    |     630 | BETA        | 150.98 | RJ   | 2019 |
| A CASA MARROM       | HERMES MACEDO     | M    |     250 | BUBBA       |  60.00 | MG   | 2016 |
| ESTACIO QUERIDO     | GERALDO FRANCISCO | M    |     310 | INSIGNIA    | 100.00 | ES   | 2015 |
| PRA SEMPRE AMIGAS   | LEDA SILVA        | F    |     510 | INSIGNIA    |  78.98 | ES   | 2011 |
| COPAS INESQUECIVEIS | MARCO ALCANTARA   | M    |     200 | LARSON      | 130.98 | RS   | 2018 |
| O PODER DA MENTE    | CLARA MAFRA       | F    |     120 | CONTINENTAL |  56.58 | SP   | 2017 |
+---------------------+-------------------+------+---------+-------------+--------+------+------+

-- TRAZER O NOME DO LIVRO E O NOME DA EDITORA

SELECT LIVRO, EDITORA FROM LIVROS;

+---------------------+-------------+
| LIVRO               | EDITORA     |
+---------------------+-------------+
| CAVALEIRO REAL      | ATLAS       |
| SQL PARA LEIGOS     | ADDISON     |
| RECEITAS CASEIRAS   | ATLAS       |
| PESSOAS EFETIVAS    | BETA        |
| HABITOS SAUDAVEIS   | BETA        |
| A CASA MARROM       | BUBBA       |
| ESTACIO QUERIDO     | INSIGNIA    |
| PRA SEMPRE AMIGAS   | INSIGNIA    |
| COPAS INESQUECIVEIS | LARSON      |
| O PODER DA MENTE    | CONTINENTAL |
+---------------------+-------------+

-- TRAZER O NOME DO LIVRO E A UF DOS LIVROS PUBLICADOS POR AUTORES DO SEXO MASCULINO

SELECT LIVRO, UF FROM LIVROS
WHERE SEXO = 'M';

+---------------------+------+
| LIVRO               | UF   |
+---------------------+------+
| SQL PARA LEIGOS     | SP   |
| PESSOAS EFETIVAS    | RJ   |
| HABITOS SAUDAVEIS   | RJ   |
| A CASA MARROM       | MG   |
| ESTACIO QUERIDO     | ES   |
| COPAS INESQUECIVEIS | RS   |
+---------------------+------+

-- TRAZER O NOME DO LIVRO E O NÚMERO DE PÁGINAS DOS LIVROS PUBLICADOS POR AUTORES DO SEXO FEMININO

SELECT LIVRO, PAGINAS FROM LIVROS
WHERE SEXO = 'F';

+-------------------+---------+
| LIVRO             | PAGINAS |
+-------------------+---------+
| CAVALEIRO REAL    |     465 |
| RECEITAS CASEIRAS |     210 |
| PRA SEMPRE AMIGAS |     510 |
| O PODER DA MENTE  |     120 |
+-------------------+---------+

-- TRAZER OS VALORES DOS LIVROS DAS EDITORAS DE SÃO PAULO

SELECT LIVRO, VALOR FROM LIVROS
WHERE UF = 'SP';

+------------------+-------+
| LIVRO            | VALOR |
+------------------+-------+
| SQL PARA LEIGOS  | 98.00 |
| O PODER DA MENTE | 56.58 |
+------------------+-------+

-- TRAZER OS DADOS DOS AUTORES DO SEXO MASCULINO QUE TIVERAM LIVROS PUBLICADOS POR SÃO PAULO OU RIO DE JANEIRO

SELECT AUTOR, SEXO FROM LIVROS
WHERE SEXO = 'M' AND (UF = 'RJ' OR UF = 'SP');

+----------------+------+
| AUTOR          | SEXO |
+----------------+------+
| JOAO NUNES     | M    |
| EDUARDO SANTOS | M    |
| EDUARDO SANTOS | M    |
+----------------+------+
