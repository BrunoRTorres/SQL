--! DICIONÁRIO DE DADOS

SHOW DATABASES;

+--------------------+
| Database           |
+--------------------+
| information_schema |
| comercio           |
| exercicio          |
| livraria           |
| mysql              |
| performance_schema |
| projeto            |
| sakila             |
| sys                |
| teste              |
| world              |
+--------------------+

USE INFORMATION_SCHEMA;

SHOW TABLES;

+---------------------------------------+
| Tables_in_information_schema          |
+---------------------------------------+
| CHARACTER_SETS                        |
| COLLATIONS                            |
| COLLATION_CHARACTER_SET_APPLICABILITY |
| COLUMNS                               |
| COLUMN_PRIVILEGES                     |
| ENGINES                               |
| EVENTS                                |
| FILES                                 |
| GLOBAL_STATUS                         |
| GLOBAL_VARIABLES                      |
| KEY_COLUMN_USAGE                      |
| OPTIMIZER_TRACE                       |
| PARAMETERS                            |
| PARTITIONS                            |
| PLUGINS                               |
| PROCESSLIST                           |
| PROFILING                             |
| REFERENTIAL_CONSTRAINTS               |
| ROUTINES                              |
| SCHEMATA                              |
| SCHEMA_PRIVILEGES                     |
| SESSION_STATUS                        |
| SESSION_VARIABLES                     |
| STATISTICS                            |
| TABLES                                |
| TABLESPACES                           |
| TABLE_CONSTRAINTS                     |
| TABLE_PRIVILEGES                      |
| TRIGGERS                              |
| USER_PRIVILEGES                       |
| VIEWS                                 |
| INNODB_LOCKS                          |
| INNODB_TRX                            |
| INNODB_SYS_DATAFILES                  |
| INNODB_FT_CONFIG                      |
| INNODB_SYS_VIRTUAL                    |
| INNODB_CMP                            |
| INNODB_FT_BEING_DELETED               |
| INNODB_CMP_RESET                      |
| INNODB_CMP_PER_INDEX                  |
| INNODB_CMPMEM_RESET                   |
| INNODB_FT_DELETED                     |
| INNODB_BUFFER_PAGE_LRU                |
| INNODB_LOCK_WAITS                     |
| INNODB_TEMP_TABLE_INFO                |
| INNODB_SYS_INDEXES                    |
| INNODB_SYS_TABLES                     |
| INNODB_SYS_FIELDS                     |
| INNODB_CMP_PER_INDEX_RESET            |
| INNODB_BUFFER_PAGE                    |
| INNODB_FT_DEFAULT_STOPWORD            |
| INNODB_FT_INDEX_TABLE                 |
| INNODB_FT_INDEX_CACHE                 |
| INNODB_SYS_TABLESPACES                |
| INNODB_METRICS                        |
| INNODB_SYS_FOREIGN_COLS               |
| INNODB_CMPMEM                         |
| INNODB_BUFFER_POOL_STATS              |
| INNODB_SYS_COLUMNS                    |
| INNODB_SYS_FOREIGN                    |
| INNODB_SYS_TABLESTATS                 |
+---------------------------------------+

DESC TABLE_CONSTRAINTS;

+--------------------+--------------+------+-----+---------+-------+
| Field              | Type         | Null | Key | Default | Extra |
+--------------------+--------------+------+-----+---------+-------+
| CONSTRAINT_CATALOG | varchar(512) | NO   |     |         |       |
| CONSTRAINT_SCHEMA  | varchar(64)  | NO   |     |         |       |
| CONSTRAINT_NAME    | varchar(64)  | NO   |     |         |       |
| TABLE_SCHEMA       | varchar(64)  | NO   |     |         |       |
| TABLE_NAME         | varchar(64)  | NO   |     |         |       |
| CONSTRAINT_TYPE    | varchar(64)  | NO   |     |         |       |
+--------------------+--------------+------+-----+---------+-------+

SELECT CONSTRAINT_SCHEMA AS "BANCO",
       TABLE_NAME AS "TABELA",
       CONSTRAINT_NAME AS "NOME REGRA",
       CONSTRAINT_TYPE AS "TIPO"
FROM TABLE_CONSTRAINTS
WHERE CONSTRAINT_SCHEMA = "PROJETO";

+---------+------------+------------------+-------------+
| BANCO   | TABELA     | NOME REGRA       | TIPO        |
+---------+------------+------------------+-------------+
| projeto | curso      | PRIMARY          | PRIMARY KEY |
| projeto | jogador    | PRIMARY          | PRIMARY KEY |
| projeto | pessoa     | PRIMARY          | PRIMARY KEY |
| projeto | pessoa     | COLUNA4          | UNIQUE      |
| projeto | times      | FK_JOGADOR_TIMES | FOREIGN KEY |
| projeto | vendedores | PRIMARY          | PRIMARY KEY |
+---------+------------+------------------+-------------+

--? APAGANDO CONSTRAINTS

USE PROJETO;

ALTER TABLE TIMES
DROP FOREIGN KEY FK_JOGADOR_TIMES;

ALTER TABLE TIMES ADD CONSTRAINT FK_JOGADOR_TIMES
FOREIGN KEY (ID_JOGADOR) REFERENCES JOGADOR (IDJOGADOR);
