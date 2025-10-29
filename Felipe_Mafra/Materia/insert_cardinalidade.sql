INSERT INTO CLIENTE VALUES(NULL, 'JOAO', 'M', 'JOAO@IG.COM', '23456123475');
INSERT INTO CLIENTE VALUES(NULL, 'CARLOS', 'M', 'CARLOS@IG.COM', '873778642');
INSERT INTO CLIENTE VALUES(NULL, 'ANA', 'F', 'ANA@IG.COM', '78615378');
INSERT INTO CLIENTE VALUES(NULL, 'CARLA', 'F', 'CARLA@IG.COM', '9773123185');
INSERT INTO CLIENTE VALUES(NULL, 'JORGE', 'M', 'JORGE@IG.COM', '78943778');
INSERT INTO CLIENTE VALUES(NULL, 'CELIA', 'F', 'CELIA@IG.COM', '192977383');

SELECT * FROM CLIENTE;

+-----------+--------+------+---------------+-------------+
| IDCLIENTE | NOME   | SEXO | EMAIL         | CPF         |
+-----------+--------+------+---------------+-------------+
|         1 | JOAO   | M    | JOAO@IG.COM   | 23456123475 |
|         2 | CARLOS | M    | CARLOS@IG.COM | 873778642   |
|         3 | ANA    | F    | ANA@IG.COM    | 78615378    |
|         4 | CARLA  | F    | CARLA@IG.COM  | 9773123185  |
|         5 | JORGE  | M    | JORGE@IG.COM  | 78943778    |
|         6 | CELIA  | F    | CELIA@IG.COM  | 192977383   |
+-----------+--------+------+---------------+-------------+

/* INSERT 1 X 1 */

INSERT INTO ENDERECO VALUES(NULL, 'RUA ANTONIO SA', 'CENTRO', 'B. HORIZONTE', 'MG', 4);
INSERT INTO ENDERECO VALUES(NULL, 'RUA CAPITAO HERMES', 'CENTRO', 'RIO DE JANEIRO', 'RJ', 1);
INSERT INTO ENDERECO VALUES(NULL, 'RUA PRESIDENTE VARGAS', 'JARDINS', 'SAO PAULO', 'SP', 3);
INSERT INTO ENDERECO VALUES(NULL, 'RUA ALFANDEGA', 'ESTACIO', 'RIO DE JANEIRO', 'RJ', 2);
INSERT INTO ENDERECO VALUES(NULL, 'RUA DO OUVIDOR', 'FLAMENGO', 'RIO DE JANEIRO', 'RJ', 6);
INSERT INTO ENDERECO VALUES(NULL, 'RUA URUGUAIANA', 'CENTRO', 'VITORIA', 'ES', 5);

SELECT * FROM ENDERECO;

+------------+-----------------------+----------+----------------+--------+------------+
| IDENDERECO | RUA                   | BAIRRO   | CIDADE         | ESTADO | ID_CLIENTE |
+------------+-----------------------+----------+----------------+--------+------------+
|          1 | RUA ANTONIO SA        | CENTRO   | B. HORIZONTE   | MG     |          4 |
|          3 | RUA CAPITAO HERMES    | CENTRO   | RIO DE JANEIRO | RJ     |          1 |
|          4 | RUA PRESIDENTE VARGAS | JARDINS  | SAO PAULO      | SP     |          3 |
|          5 | RUA ALFANDEGA         | ESTACIO  | RIO DE JANEIRO | RJ     |          2 |
|          6 | RUA DO OUVIDOR        | FLAMENGO | RIO DE JANEIRO | RJ     |          6 |
|          7 | RUA URUGUAIANA        | CENTRO   | VITORIA        | ES     |          5 |
+------------+-----------------------+----------+----------------+--------+------------+

/* INSERT 1 X N */

INSERT INTO TELEFONE VALUES(NULL, 'CEL', '78334786', 5);
INSERT INTO TELEFONE VALUES(NULL, 'RES', '37861237', 5);
INSERT INTO TELEFONE VALUES(NULL, 'CEL', '37831237', 1);
INSERT INTO TELEFONE VALUES(NULL, 'COM', '78931713', 2);
INSERT INTO TELEFONE VALUES(NULL, 'RES', '87953177', 1);
INSERT INTO TELEFONE VALUES(NULL, 'CEL', '12379786', 3);
INSERT INTO TELEFONE VALUES(NULL, 'CEL', '97845631', 3);
INSERT INTO TELEFONE VALUES(NULL, 'COM', '25789134', 1);
INSERT INTO TELEFONE VALUES(NULL, 'RES', '34789167', 5);
INSERT INTO TELEFONE VALUES(NULL, 'CEL', '33945473', 2);

SELECT * FROM TELEFONE;

+------------+------+----------+------------+
| IDTELEFONE | TIPO | NUMERO   | ID_CLIENTE |
+------------+------+----------+------------+
|          1 | CEL  | 78334786 |          5 |
|          2 | RES  | 37861237 |          5 |
|          3 | CEL  | 37831237 |          1 |
|          4 | COM  | 78931713 |          2 |
|          5 | RES  | 87953177 |          1 |
|          6 | CEL  | 12379786 |          3 |
|          7 | CEL  | 97845631 |          3 |
|          8 | COM  | 25789134 |          1 |
|          9 | RES  | 34789167 |          5 |
|         10 | CEL  | 33945473 |          2 |
+------------+------+----------+------------+