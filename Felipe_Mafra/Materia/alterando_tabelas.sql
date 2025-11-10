--! ALTERANDO TABELAS

CREATE TABLE TABELA(
    COLUNA1 VARCHAR(30),
    COLUNA2 VARCHAR(30),
    COLUNA3 VARCHAR(30)
);

--? ADICIONANDO UMA PK

ALTER TABLE TABELA
ADD PRIMARY KEY (COLUNA1);

--? ADICIONANDO COLUNA SEM POSIÇÃO. ÚLTIMA POSIÇÃO

ALTER TABLE TABELA
ADD COLUNA VARCHAR(30);

ALTER TABLE TABELA
ADD COLUNA100 INT;

--? ADICIONANDO UMA COLUNA COM POSIÇÃO

ALTER TABLE TABELA
ADD COLUNA4 VARCHAR(30) NOT NULL UNIQUE
AFTER COLUNA3;

--? MODIFICANDO UM TIPO DE UM CAMPO

ALTER TABLE TABELA MODIFY COLUNA2 DATE NOT NULL;

--? RENOMEANDO O NOME DA TABELA

ALTER TABLE TABELA
RENAME PESSOA;

CREATE TABLE TIME(
    IDTIME INT PRIMARY KEY AUTO_INCREMENT,
    TIME VARCHAR(30),
    ID_PESSOA VARCHAR(30)
);

--? FOREIGN KEY

ALTER TABLE TIME
ADD FOREIGN KEY (ID_PESSOA)
REFERENCES PESSOA(COLUNA1);

--? VERIFICAR AS CHAVES

SHOW CREATE TABLE TIME;

+-------+----------------------------------------------------------------------------+
| Table | Create Table                                                                                                                                                                                                                                                                                                                      |
+-------+----------------------------------------------------------------------------+
| TIME  | CREATE TABLE `time` (
  `IDTIME` int(11) NOT NULL AUTO_INCREMENT,
  `TIME` varchar(30) DEFAULT NULL,
  `ID_PESSOA` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IDTIME`),
  KEY `ID_PESSOA` (`ID_PESSOA`),
  CONSTRAINT `time_ibfk_1` FOREIGN KEY (`ID_PESSOA`) REFERENCES `pessoa` (`COLUNA1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 |
+-------+----------------------------------------------------------------------------+
