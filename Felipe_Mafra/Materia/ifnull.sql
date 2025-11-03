/* IFNULL */

SELECT C.NOME, C.EMAIL, E.ESTADO, T.NUMERO
FROM CLIENTE C
	INNER JOIN ENDERECO E
	ON C.IDCLIENTE = E.ID_CLIENTE
	INNER JOIN TELEFONE T
	ON C.IDCLIENTE = T.ID_CLIENTE;
	
+---------+-------------------+--------+----------+
| NOME    | EMAIL             | ESTADO | NUMERO   |
+---------+-------------------+--------+----------+
| JORGE   | JORGE@IG.COM      | ES     | 78334786 |
| JORGE   | JORGE@IG.COM      | ES     | 37861237 |
| JOAO    | JOAO@IG.COM       | RJ     | 37831237 |
| CARLOS  | CARLOS@IG.COM     | RJ     | 78931713 |
| JOAO    | JOAO@IG.COM       | RJ     | 87953177 |
| ANA     | ANA@IG.COM        | SP     | 12379786 |
| ANA     | ANA@IG.COM        | SP     | 97845631 |
| JOAO    | JOAO@IG.COM       | RJ     | 25789134 |
| JORGE   | JORGE@IG.COM      | ES     | 34789167 |
| CARLOS  | CARLOS@IG.COM     | RJ     | 33945473 |
| ANDRE   | ANDRE@GLOBO.COM   | RJ     | 68976565 |
| ANDRE   | ANDRE@GLOBO.COM   | RJ     | 99656675 |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 33567765 |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 88668786 |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 55689654 |
| DANIELE | DANIELE@GMAIL.COM | ES     | 88687979 |
| LORENA  | NULL              | RJ     | 88965676 |
| ANTONIO | ANTONIO@IG.COM    | SP     | 89966809 |
| ANTONIO | ANTONIO@UOL.COM   | PR     | 88679978 |
| ELAINE  | ELAINE@GLOBO.COM  | SP     | 99655768 |
| CARMEM  | CARMEM@IG.COM     | RJ     | 89955665 |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 77455786 |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 89766554 |
| JOICE   | JOICE@GMAIL.COM   | RJ     | 77755785 |
| JOICE   | JOICE@GMAIL.COM   | RJ     | 44522578 |
+---------+-------------------+--------+----------+

SELECT C.NOME,
	   IFNULL(C.EMAIL, '***********') AS 'EMAIL', 
	   E.ESTADO,
	   T.NUMERO
FROM CLIENTE C
	INNER JOIN ENDERECO E
	ON C.IDCLIENTE = E.ID_CLIENTE
	INNER JOIN TELEFONE T
	ON C.IDCLIENTE = T.ID_CLIENTE;
	
+---------+-------------------+--------+----------+
| NOME    | EMAIL             | ESTADO | NUMERO   |
+---------+-------------------+--------+----------+
| JORGE   | JORGE@IG.COM      | ES     | 78334786 |
| JORGE   | JORGE@IG.COM      | ES     | 37861237 |
| JOAO    | JOAO@IG.COM       | RJ     | 37831237 |
| CARLOS  | CARLOS@IG.COM     | RJ     | 78931713 |
| JOAO    | JOAO@IG.COM       | RJ     | 87953177 |
| ANA     | ANA@IG.COM        | SP     | 12379786 |
| ANA     | ANA@IG.COM        | SP     | 97845631 |
| JOAO    | JOAO@IG.COM       | RJ     | 25789134 |
| JORGE   | JORGE@IG.COM      | ES     | 34789167 |
| CARLOS  | CARLOS@IG.COM     | RJ     | 33945473 |
| ANDRE   | ANDRE@GLOBO.COM   | RJ     | 68976565 |
| ANDRE   | ANDRE@GLOBO.COM   | RJ     | 99656675 |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 33567765 |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 88668786 |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 55689654 |
| DANIELE | DANIELE@GMAIL.COM | ES     | 88687979 |
| LORENA  | ***********       | RJ     | 88965676 |
| ANTONIO | ANTONIO@IG.COM    | SP     | 89966809 |
| ANTONIO | ANTONIO@UOL.COM   | PR     | 88679978 |
| ELAINE  | ELAINE@GLOBO.COM  | SP     | 99655768 |
| CARMEM  | CARMEM@IG.COM     | RJ     | 89955665 |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 77455786 |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 89766554 |
| JOICE   | JOICE@GMAIL.COM   | RJ     | 77755785 |
| JOICE   | JOICE@GMAIL.COM   | RJ     | 44522578 |
+---------+-------------------+--------+----------+