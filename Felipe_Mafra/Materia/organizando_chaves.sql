--! ORAGNIZAÇÃO DE CHAVES - CONSTRAINT (REGRA)

CREATE TABLE JOGADOR(
    IDJOGADOR INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(30)
);

CREATE TABLE TIMES(
    IDTIME INT PRIMARY KEY AUTO_INCREMENT,
    NOMETIME VARCHAR(30),
    ID_JOGADOR INT,
    FOREIGN KEY (ID_JOGADOR)
    REFERENCES JOGADOR (IDJOGADOR)
);

SHOW CREATE TABLE JOGADOR;

+---------+--------------------------------------------+
| JOGADOR | CREATE TABLE `jogador` (
  `IDJOGADOR` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IDJOGADOR`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 |
+---------+--------------------------------------------+

SHOW CREATE TABLE JOGADOR;

+-------+--------------------------------------------------------------------------------+
| TIMES | CREATE TABLE `times` (
  `IDTIME` int(11) NOT NULL AUTO_INCREMENT,
  `NOMETIME` varchar(30) DEFAULT NULL,
  `ID_JOGADOR` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDTIME`),
  KEY `ID_JOGADOR` (`ID_JOGADOR`),
  CONSTRAINT `times_ibfk_1` FOREIGN KEY (`ID_JOGADOR`) REFERENCES `jogador` (`IDJOGADOR`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 |
+-------+--------------------------------------------------------------------------------+

DROP TABLE TIMES;
DROP TABLE JOGADOR;

CREATE TABLE JOGADOR(
    IDJOGADOR INT,
    NOME VARCHAR(30) NOT NULL
);

CREATE TABLE TIMES(
    IDTIMES INT,
    NOMETIME VARCHAR(30) NOT NULL,
    ID_JOGADOR INT
);

ALTER TABLE JOGADOR ADD CONSTRAINT PK_JOGADOR
PRIMARY KEY (IDJOGADOR);

ALTER TABLE TIMES ADD CONSTRAINT FK_JOGADOR_TIMES
FOREIGN KEY (ID_JOGADOR) REFERENCES JOGADOR (IDJOGADOR);

SHOW CREATE TABLE JOGADOR;

+---------+---------------------------+
| JOGADOR | CREATE TABLE `jogador` (
  `IDJOGADOR` int(11) NOT NULL,
  `NOME` varchar(30) NOT NULL,
  PRIMARY KEY (`IDJOGADOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 |
+---------+---------------------------+

SHOW CREATE TABLE TIMES;

+-------+------------------------------------------------------------------------------------+
| TIMES | CREATE TABLE `times` (
  `IDTIMES` int(11) DEFAULT NULL,
  `NOMETIME` varchar(30) NOT NULL,
  `ID_JOGADOR` int(11) DEFAULT NULL,
  KEY `FK_JOGADOR_TIMES` (`ID_JOGADOR`),
  CONSTRAINT `FK_JOGADOR_TIMES` FOREIGN KEY (`ID_JOGADOR`) REFERENCES `jogador` (`IDJOGADOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 |
+-------+------------------------------------------------------------------------------------+