/* INNER JOIN */

/* NOME, SEXO, BAIRRO, CIDADE, TIPO, NUMERO */

SELECT NOME, SEXO, BAIRRO, CIDADE, TIPO, NUMERO
FROM CLIENTE
    INNER JOIN ENDERECO
    ON IDCLIENTE = ID_CLIENTE
    INNER JOIN TELEFONE
    ON IDCLIENTE = ID_CLIENTE;

ERROR 1052 (23000): Column 'ID_CLIENTE' in on clause is ambiguous

SELECT CLIENTE.NOME, CLIENTE.SEXO, ENDERECO.BAIRRO, ENDERECO.CIDADE, TELEFONE.TIPO, TELEFONE.NUMERO
FROM CLIENTE
    INNER JOIN ENDERECO
    ON CLIENTE.IDCLIENTE = ENDERECO.ID_CLIENTE
    INNER JOIN TELEFONE
    ON CLIENTE.IDCLIENTE = TELEFONE.ID_CLIENTE;

+--------+------+---------+----------------+------+----------+
| NOME   | SEXO | BAIRRO  | CIDADE         | TIPO | NUMERO   |
+--------+------+---------+----------------+------+----------+
| JORGE  | M    | CENTRO  | VITORIA        | CEL  | 78334786 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 37861237 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | CEL  | 37831237 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | COM  | 78931713 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | RES  | 87953177 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 12379786 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 97845631 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | COM  | 25789134 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 34789167 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | CEL  | 33945473 |
+--------+------+---------+----------------+------+----------+

SELECT C.NOME, C.SEXO, E.BAIRRO, E.CIDADE, T.TIPO, T.NUMERO
FROM CLIENTE C
    INNER JOIN ENDERECO E
    ON C.IDCLIENTE = E.ID_CLIENTE
    INNER JOIN TELEFONE T
    ON C.IDCLIENTE = T.ID_CLIENTE;

+--------+------+---------+----------------+------+----------+
| NOME   | SEXO | BAIRRO  | CIDADE         | TIPO | NUMERO   |
+--------+------+---------+----------------+------+----------+
| JORGE  | M    | CENTRO  | VITORIA        | CEL  | 78334786 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 37861237 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | CEL  | 37831237 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | COM  | 78931713 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | RES  | 87953177 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 12379786 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 97845631 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | COM  | 25789134 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 34789167 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | CEL  | 33945473 |
+--------+------+---------+----------------+------+----------+
