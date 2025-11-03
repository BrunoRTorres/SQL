/* EXERCÍCIO DML */

-- RELATÓRIO GERAL DE TODOS OS CLIENTES

SELECT C.NOME, C.SEXO, C.EMAIL, C.CPF, E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO
FROM CLIENTE C
    INNER JOIN ENDERECO E
    IN IDCLIENTE = ID_CLIENTE
    INNER JOIN TELEFONE T
    ON IDCLIENTE = ID_CLIENTE
ORDER BY NOME;

+---------+------+-------------------+-------------+-----------------------+------------+----------------+--------+------+----------+
| NOME    | SEXO | EMAIL             | CPF         | RUA                   | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO   |
+---------+------+-------------------+-------------+-----------------------+------------+----------------+--------+------+----------+
| ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GOMES FREIRE      | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554 |
| ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GOMES FREIRE      | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786 |
| ANA     | F    | ANA@IG.COM        | 78615378    | RUA PRESIDENTE VARGAS | JARDINS    | SAO PAULO      | SP     | CEL  | 12379786 |
| ANA     | F    | ANA@IG.COM        | 78615378    | RUA PRESIDENTE VARGAS | JARDINS    | SAO PAULO      | SP     | CEL  | 97845631 |
| ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     | RUA MAIA LACERDA      | ESTACIO    | RIO DE JANEIRO | RJ     | RES  | 68976565 |
| ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     | RUA MAIA LACERDA      | ESTACIO    | RIO DE JANEIRO | RJ     | CEL  | 99656675 |
| ANTONIO | M    | ANTONIO@IG.COM    | 12436767    | AV CARLOS BARROSO     | JARDINS    | SAO PAULO      | SP     | CEL  | 89966809 |
| ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     | ALAMEDA SAMPAIO       | BOM RETIRO | CURITIBA       | PR     | COM  | 88679978 |
| CARLOS  | M    | CARLOS@IG.COM     | 873778642   | RUA ALFANDEGA         | ESTACIO    | RIO DE JANEIRO | RJ     | COM  | 78931713 |
| CARLOS  | M    | CARLOS@IG.COM     | 873778642   | RUA ALFANDEGA         | ESTACIO    | RIO DE JANEIRO | RJ     | CEL  | 33945473 |
| CARMEM  | F    | CARMEM@IG.COM     | 787832213   | RUA GERONIMO          | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89955665 |
| DANIELE | F    | DANIELE@GMAIL.COM | 43536789    | RUA ARAUJO LIMA       | CENTRO     | VITORIA        | ES     | COM  | 88687979 |
| ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    | RUA DA LAPA           | LAPA       | SAO PAULO      | SP     | CEL  | 99655768 |
| JOAO    | M    | JOAO@IG.COM       | 23456123475 | RUA CAPITAO HERMES    | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 87953177 |
| JOAO    | M    | JOAO@IG.COM       | 23456123475 | RUA CAPITAO HERMES    | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 25789134 |
| JOAO    | M    | JOAO@IG.COM       | 23456123475 | RUA CAPITAO HERMES    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 37831237 |
| JOICE   | F    | JOICE@GMAIL.COM   | 55412256    | RUA GOMES FREIRE      | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785 |
| JOICE   | F    | JOICE@GMAIL.COM   | 55412256    | RUA GOMES FREIRE      | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 44522578 |
| JORGE   | M    | JORGE@IG.COM      | 78943778    | RUA URUGUAIANA        | CENTRO     | VITORIA        | ES     | RES  | 37861237 |
| JORGE   | M    | JORGE@IG.COM      | 78943778    | RUA URUGUAIANA        | CENTRO     | VITORIA        | ES     | RES  | 34789167 |
| JORGE   | M    | JORGE@IG.COM      | 78943778    | RUA URUGUAIANA        | CENTRO     | VITORIA        | ES     | CEL  | 78334786 |
| KARLA   | F    | KARLA@GMAIL.COM   | 545676778   | RUA NELSON MANDELA    | COPACABANA | RIO DE JANEIRO | RJ     | CEL  | 88668786 |
| KARLA   | F    | KARLA@GMAIL.COM   | 545676778   | RUA NELSON MANDELA    | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 55689654 |
| KARLA   | F    | KARLA@GMAIL.COM   | 545676778   | RUA NELSON MANDELA    | COPACABANA | RIO DE JANEIRO | RJ     | CEL  | 33567765 |
| LORENA  | F    | NULL              | 774557887   | RUA CASTRO ALVES      | LEBLON     | RIO DE JANEIRO | RJ     | COM  | 88965676 |
+---------+------+-------------------+-------------+-----------------------+------------+----------------+--------+------+----------+

-- RELATÓRIO DE HOMENS

SELECT C.NOME, C.SEXO, C.EMAIL, C.CPF, E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO
FROM CLIENTE C
	INNER JOIN ENDERECO E
	ON C.IDCLIENTE = E.ID_CLIENTE
	INNER JOIN TELEFONE T
	ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'M'
ORDER BY NOME;

+---------+------+-----------------+-------------+--------------------+------------+----------------+--------+------+----------+
| NOME    | SEXO | EMAIL           | CPF         | RUA                | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO   |
+---------+------+-----------------+-------------+--------------------+------------+----------------+--------+------+----------+
| ANDRE   | M    | ANDRE@GLOBO.COM | 7687567     | RUA MAIA LACERDA   | ESTACIO    | RIO DE JANEIRO | RJ     | RES  | 68976565 |
| ANDRE   | M    | ANDRE@GLOBO.COM | 7687567     | RUA MAIA LACERDA   | ESTACIO    | RIO DE JANEIRO | RJ     | CEL  | 99656675 |
| ANTONIO | M    | ANTONIO@IG.COM  | 12436767    | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     | CEL  | 89966809 |
| ANTONIO | M    | ANTONIO@UOL.COM | 3423565     | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | COM  | 88679978 |
| CARLOS  | M    | CARLOS@IG.COM   | 873778642   | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | CEL  | 33945473 |
| CARLOS  | M    | CARLOS@IG.COM   | 873778642   | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | COM  | 78931713 |
| JOAO    | M    | JOAO@IG.COM     | 23456123475 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 87953177 |
| JOAO    | M    | JOAO@IG.COM     | 23456123475 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 37831237 |
| JOAO    | M    | JOAO@IG.COM     | 23456123475 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 25789134 |
| JORGE   | M    | JORGE@IG.COM    | 78943778    | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 37861237 |
| JORGE   | M    | JORGE@IG.COM    | 78943778    | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | CEL  | 78334786 |
| JORGE   | M    | JORGE@IG.COM    | 78943778    | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 34789167 |
+---------+------+-----------------+-------------+--------------------+------------+----------------+--------+------+----------+

-- RELATÓRIO DE MULHERES

SELECT C.NOME, C.SEXO, C.EMAIL, C.CPF, E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO
FROM CLIENTE C
	INNER JOIN ENDERECO E
	ON C.IDCLIENTE = E.ID_CLIENTE
	INNER JOIN TELEFONE T
	ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'
ORDER BY NOME;

+---------+------+-------------------+-----------+-----------------------+------------+----------------+--------+------+----------+
| NOME    | SEXO | EMAIL             | CPF       | RUA                   | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO   |
+---------+------+-------------------+-----------+-----------------------+------------+----------------+--------+------+----------+
| ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942  | RUA GOMES FREIRE      | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554 |
| ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942  | RUA GOMES FREIRE      | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786 |
| ANA     | F    | ANA@IG.COM        | 78615378  | RUA PRESIDENTE VARGAS | JARDINS    | SAO PAULO      | SP     | CEL  | 97845631 |
| ANA     | F    | ANA@IG.COM        | 78615378  | RUA PRESIDENTE VARGAS | JARDINS    | SAO PAULO      | SP     | CEL  | 12379786 |
| CARMEM  | F    | CARMEM@IG.COM     | 787832213 | RUA GERONIMO          | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89955665 |
| DANIELE | F    | DANIELE@GMAIL.COM | 43536789  | RUA ARAUJO LIMA       | CENTRO     | VITORIA        | ES     | COM  | 88687979 |
| ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763  | RUA DA LAPA           | LAPA       | SAO PAULO      | SP     | CEL  | 99655768 |
| JOICE   | F    | JOICE@GMAIL.COM   | 55412256  | RUA GOMES FREIRE      | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785 |
| JOICE   | F    | JOICE@GMAIL.COM   | 55412256  | RUA GOMES FREIRE      | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 44522578 |
| KARLA   | F    | KARLA@GMAIL.COM   | 545676778 | RUA NELSON MANDELA    | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 55689654 |
| KARLA   | F    | KARLA@GMAIL.COM   | 545676778 | RUA NELSON MANDELA    | COPACABANA | RIO DE JANEIRO | RJ     | CEL  | 33567765 |
| KARLA   | F    | KARLA@GMAIL.COM   | 545676778 | RUA NELSON MANDELA    | COPACABANA | RIO DE JANEIRO | RJ     | CEL  | 88668786 |
| LORENA  | F    | NULL              | 774557887 | RUA CASTRO ALVES      | LEBLON     | RIO DE JANEIRO | RJ     | COM  | 88965676 |
+---------+------+-------------------+-----------+-----------------------+------------+----------------+--------+------+----------+

-- QUANTIDADE DE HOMENS E MULHERES

SELECT COUNT(*) AS "QTD", SEXO FROM CLIENTE
GROUP BY SEXO;

+-----+------+
| QTD | SEXO |
+-----+------+
|   8 | M    |
|  12 | F    |
+-----+------+

-- IDS E EMAILS DAS MULHERES NO CENTRO DO RIO E NÃO TENHAM CELULAR

SELECT C.IDCLIENTE, C.NOME, C.EMAIL
FROM CLIENTE C
	INNER JOIN ENDERECO E
	ON C.IDCLIENTE = E.ID_CLIENTE
	INNER JOIN TELEFONE T
	ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'
AND BAIRRO = 'CENTRO'
AND CIDADE = 'RIO DE JANEIRO'
AND (TIPO = 'RES' OR TIPO = 'COM');

+-----------+---------+-------------------+
| IDCLIENTE | NOME    | EMAIL             |
+-----------+---------+-------------------+
|        18 | CARMEM  | CARMEM@IG.COM     |
|        19 | ADRIANA | ADRIANA@GMAIL.COM |
|        19 | ADRIANA | ADRIANA@GMAIL.COM |
|        20 | JOICE   | JOICE@GMAIL.COM   |
|        20 | JOICE   | JOICE@GMAIL.COM   |
+-----------+---------+-------------------+

/* PARA UMA CAMPANHA DE MARKETING, O SETOR SOLICITOU UM RELATÓRIO
   COM O NOME, EMAIL E TELEFONE CELULAR DOS CLIENTES QUE MORAM NO
   ESTADO DO RIO DE JANEIRO, VOCÊ TERÁ QUE PASSAR A QUERY PARA
   GERAR O RELATÓRIO PARA O PROGRAMADOR
*/

SELECT C.NOME, C.EMAIL, T.NUMERO AS CELULAR
FROM CLIENTE C
	INNER JOIN ENDERECO E
	ON C.IDCLIENTE = E.ID_CLIENTE
	INNER JOIN TELEFONE T
	ON C.IDCLIENTE = T.ID_CLIENTE
WHERE ESTADO = 'RJ'
AND TIPO = 'CEL';

+--------+-----------------+----------+
| NOME   | EMAIL           | CELULAR  |
+--------+-----------------+----------+
| JOAO   | JOAO@IG.COM     | 37831237 |
| CARLOS | CARLOS@IG.COM   | 33945473 |
| ANDRE  | ANDRE@GLOBO.COM | 99656675 |
| KARLA  | KARLA@GMAIL.COM | 33567765 |
| KARLA  | KARLA@GMAIL.COM | 88668786 |
+--------+-----------------+----------+

/* PARA UMA CAMPANHA DE PRODUTOS DE BELEZA, O COMERCIAL SOLICITOU
   UM RELATÓRIO COM O NOME, EMAIL E TELEFONE CELULAR DAS MULHERES
   QUE MORAM NO ESTADO DE SÃO PAULO, VOCÊ TERÁ QUE PASSAR A QUERY
   PARA GERAR O RELATÓRIO PARA O PROGRAMADOR
*/

SELECT C.NOME, C.EMAIL, T.NUMERO AS CELULAR
FROM CLIENTE C
	INNER JOIN ENDERECO E
	ON C.IDCLIENTE = E.ID_CLIENTE
	INNER JOIN TELEFONE T
	ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'
AND ESTADO = 'SP';

+--------+------------------+----------+
| NOME   | EMAIL            | CELULAR  |
+--------+------------------+----------+
| ANA    | ANA@IG.COM       | 12379786 |
| ANA    | ANA@IG.COM       | 97845631 |
| ELAINE | ELAINE@GLOBO.COM | 99655768 |
+--------+------------------+----------+

DESC CLIENTE;

+-----------+---------------+------+-----+---------+----------------+
| Field     | Type          | Null | Key | Default | Extra          |
+-----------+---------------+------+-----+---------+----------------+
| IDCLIENTE | int(11)       | NO   | PRI | NULL    | auto_increment |
| NOME      | varchar(30)   | NO   |     | NULL    |                |
| SEXO      | enum('M','F') | NO   |     | NULL    |                |
| EMAIL     | varchar(50)   | YES  | UNI | NULL    |                |
| CPF       | varchar(15)   | YES  | UNI | NULL    |                |
+-----------+---------------+------+-----+---------+----------------+

DESC ENDERECO;

+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDENDERECO | int(11)     | NO   | PRI | NULL    | auto_increment |
| RUA        | varchar(30) | NO   |     | NULL    |                |
| BAIRRO     | varchar(30) | NO   |     | NULL    |                |
| CIDADE     | varchar(30) | NO   |     | NULL    |                |
| ESTADO     | char(2)     | NO   |     | NULL    |                |
| ID_CLIENTE | int(11)     | YES  | UNI | NULL    |                |
+------------+-------------+------+-----+---------+----------------+

DESC TELEFONE;

+------------+-------------------------+------+-----+---------+----------------+
| Field      | Type                    | Null | Key | Default | Extra          |
+------------+-------------------------+------+-----+---------+----------------+
| IDTELEFONE | int(11)                 | NO   | PRI | NULL    | auto_increment |
| TIPO       | enum('RES','COM','CEL') | NO   |     | NULL    |                |
| NUMERO     | varchar(10)             | NO   |     | NULL    |                |
| ID_CLIENTE | int(11)                 | YES  | MUL | NULL    |                |
+------------+-------------------------+------+-----+---------+----------------+

INSERT INTO CLIENTE VALUES(NULL,'FLAVIO','M','FLAVIO@IG.COM','4657765');
INSERT INTO CLIENTE VALUES(NULL,'ANDRE','M','ANDRE@GLOBO.COM','7687567');
INSERT INTO CLIENTE VALUES(NULL,'GIOVANA','F',NULL,'0876655');
INSERT INTO CLIENTE VALUES(NULL,'KARLA','M','KARLA@GMAIL.COM','545676778');
INSERT INTO CLIENTE VALUES(NULL,'DANIELE','M','DANIELE@GMAIL.COM','43536789');
INSERT INTO CLIENTE VALUES(NULL,'LORENA','M',NULL,'774557887');
INSERT INTO CLIENTE VALUES(NULL,'EDUARDO','M',NULL,'54376457');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','F','ANTONIO@IG.COM','12436767');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','M','ANTONIO@UOL.COM','3423565');
INSERT INTO CLIENTE VALUES(NULL,'ELAINE','M','ELAINE@GLOBO.COM','32567763');
INSERT INTO CLIENTE VALUES(NULL,'CARMEM','M','CARMEM@IG.COM','787832213');
INSERT INTO CLIENTE VALUES(NULL,'ADRIANA','F','ADRIANA@GMAIL.COM','88556942');
INSERT INTO CLIENTE VALUES(NULL,'JOICE','F','JOICE@GMAIL.COM','55412256');


INSERT INTO ENDERECO VALUES(NULL,'RUA GUEDES','CASCADURA','B. HORIZONTE','MG',8);
INSERT INTO ENDERECO VALUES(NULL,'RUA MAIA LACERDA','ESTACIO','RIO DE JANEIRO','RJ',9);
INSERT INTO ENDERECO VALUES(NULL,'RUA VISCONDESSA','CENTRO','RIO DE JANEIRO','RJ',10);
INSERT INTO ENDERECO VALUES(NULL,'RUA NELSON MANDELA','COPACABANA','RIO DE JANEIRO','RJ',11);
INSERT INTO ENDERECO VALUES(NULL,'RUA ARAUJO LIMA','CENTRO','VITORIA','ES',12);
INSERT INTO ENDERECO VALUES(NULL,'RUA CASTRO ALVES','LEBLON','RIO DE JANEIRO','RJ',13);
INSERT INTO ENDERECO VALUES(NULL,'AV CAPITAO ANTUNES','CENTRO','CURITIBA','PR',14);
INSERT INTO ENDERECO VALUES(NULL,'AV CARLOS BARROSO','JARDINS','SAO PAULO','SP',15);
INSERT INTO ENDERECO VALUES(NULL,'ALAMEDA SAMPAIO','BOM RETIRO','CURITIBA','PR',16);
INSERT INTO ENDERECO VALUES(NULL,'RUA DA LAPA','LAPA','SAO PAULO','SP',17);
INSERT INTO ENDERECO VALUES(NULL,'RUA GERONIMO','CENTRO','RIO DE JANEIRO','RJ',18);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',19);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',20);


INSERT INTO TELEFONE VALUES(NULL,'RES','68976565',9);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99656675',9);
INSERT INTO TELEFONE VALUES(NULL,'CEL','33567765',11);
INSERT INTO TELEFONE VALUES(NULL,'CEL','88668786',11);
INSERT INTO TELEFONE VALUES(NULL,'COM','55689654',11);
INSERT INTO TELEFONE VALUES(NULL,'COM','88687979',12);
INSERT INTO TELEFONE VALUES(NULL,'COM','88965676',13);
INSERT INTO TELEFONE VALUES(NULL,'CEL','89966809',15);
INSERT INTO TELEFONE VALUES(NULL,'COM','88679978',16);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99655768',17);
INSERT INTO TELEFONE VALUES(NULL,'RES','89955665',18);
INSERT INTO TELEFONE VALUES(NULL,'RES','77455786',19);
INSERT INTO TELEFONE VALUES(NULL,'RES','89766554',19);
INSERT INTO TELEFONE VALUES(NULL,'RES','77755785',20);
INSERT INTO TELEFONE VALUES(NULL,'COM','44522578',20);
