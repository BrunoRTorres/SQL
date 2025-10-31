/* SELEÇÃO, PROJEÇÃO E JUNÇÃO */

-- PROJEÇÃO -> É TUDO QUE VOCÊ QUER VER NA TELA

SELECT NOW() AS DATA_ATUAL;

SELECT 2 + 2 AS SOMA;

SELECT 2 + 2 AS SOMA, NOME, NOW();

-- SELEÇÃO -> É UM SUBCONJUNTO DO CONJUNTO TOTAL DE REGISTROS DE UMA TABELA.
-- A CLAUSULA DE SELEÇÃO É O WHERE

SELECT NOME, SEXO, EMAIL -- PROJEÇÃO
FROM CLIENTE -- ORIGEM
WHERE SEXO = 'F'; -- SELEÇÃO

SELECT NUMERO -- PROJEÇÃO
FROM TELEFONE -- ORIGEM
WHERE TIPO = 'CEL'; -- SELEÇÃO

-- JUNÇÃO -> JOIN

SELECT NOME, EMAIL, IDCLIENTE
FROM CLIENTE;

SELECT ID_CLIENTE, BAIRRO, CIDADE
FROM ENDERECO;

+--------+---------------+-----------+  +------------+----------+----------------+
| NOME   | EMAIL         | IDCLIENTE |  | ID_CLIENTE | BAIRRO   | CIDADE         |
+--------+---------------+-----------+  +------------+----------+----------------+
| JOAO   | JOAO@IG.COM   |         1 |  |          4 | CENTRO   | B. HORIZONTE   |
| CARLOS | CARLOS@IG.COM |         2 |  |          1 | CENTRO   | RIO DE JANEIRO |
| ANA    | ANA@IG.COM    |         3 |  |          3 | JARDINS  | SAO PAULO      |
| CARLA  | CARLA@IG.COM  |         4 |  |          2 | ESTACIO  | RIO DE JANEIRO |
| JORGE  | JORGE@IG.COM  |         5 |  |          6 | FLAMENGO | RIO DE JANEIRO |
| CELIA  | CELIA@IG.COM  |         6 |  |          5 | CENTRO   | VITORIA        |
+--------+---------------+-----------+  +------------+----------+----------------+

/* NOME, SEXO, BAIRRO, CIDADE */

SELECT NOME, SEXO, IDCLIENTE, ID_CLIENTE, BAIRRO, CIDADE
FROM CLIENTE
    INNER JOIN ENDERECO
    ON IDCLIENTE = ID_CLIENTE;

+--------+------+-----------+------------+----------+----------------+
| NOME   | SEXO | IDCLIENTE | ID_CLIENTE | BAIRRO   | CIDADE         |
+--------+------+-----------+------------+----------+----------------+
| JOAO   | M    |         1 |          1 | CENTRO   | RIO DE JANEIRO |
| CARLOS | M    |         2 |          2 | ESTACIO  | RIO DE JANEIRO |
| ANA    | F    |         3 |          3 | JARDINS  | SAO PAULO      |
| CARLA  | F    |         4 |          4 | CENTRO   | B. HORIZONTE   |
| JORGE  | M    |         5 |          5 | CENTRO   | VITORIA        |
| CELIA  | F    |         6 |          6 | FLAMENGO | RIO DE JANEIRO |
+--------+------+-----------+------------+----------+----------------+

SELECT NOME, SEXO, IDCLIENTE, ID_CLIENTE, BAIRRO, CIDADE -- PROJEÇÃO
FROM CLIENTE -- ORIGEM
    INNER JOIN ENDERECO -- JUNÇÃO
    ON IDCLIENTE = ID_CLIENTE
WHERE SEXO = 'F'; -- SELEÇÃO

/* NOME, SEXO, EMAIL, TIPO, NUMERO */

SELECT NOME, SEXO, EMAIL, TIPO, NUMERO
FROM CLIENTE
    INNER JOIN TELEFONE
    ON IDCLIENTE = ID_CLIENTE;

+--------+------+---------------+------+----------+
| NOME   | SEXO | EMAIL         | TIPO | NUMERO   |
+--------+------+---------------+------+----------+
| JORGE  | M    | JORGE@IG.COM  | CEL  | 78334786 |
| JORGE  | M    | JORGE@IG.COM  | RES  | 37861237 |
| JOAO   | M    | JOAO@IG.COM   | CEL  | 37831237 |
| CARLOS | M    | CARLOS@IG.COM | COM  | 78931713 |
| JOAO   | M    | JOAO@IG.COM   | RES  | 87953177 |
| ANA    | F    | ANA@IG.COM    | CEL  | 12379786 |
| ANA    | F    | ANA@IG.COM    | CEL  | 97845631 |
| JOAO   | M    | JOAO@IG.COM   | COM  | 25789134 |
| JORGE  | M    | JORGE@IG.COM  | RES  | 34789167 |
| CARLOS | M    | CARLOS@IG.COM | CEL  | 33945473 |
+--------+------+---------------+------+----------+
