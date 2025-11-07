--! EXERCÍCIO PROCEDURE

--+ CRIAR UMA PROCEDURE PARA CONSULTAR CURSOS

DESC CURSO

+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| IDCURSO | int(11)     | NO   | PRI | NULL    | auto_increment |
| NOME    | varchar(30) | NO   |     | NULL    |                |
| HORAS   | int(3)      | NO   |     | NULL    |                |
| VALOR   | float(10,2) | NO   |     | NULL    |                |
+---------+-------------+------+-----+---------+----------------+

DELIMITER $

CREATE PROCEDURE CONS_CURSO(P_IDCURSO INT)
BEGIN

    SELECT * FROM CURSO
    WHERE IDCURSO = P_IDCURSO;

END
$

DELIMITER ;

CALL CONS_CURSO(1);
CALL CONS_CURSO(2);
