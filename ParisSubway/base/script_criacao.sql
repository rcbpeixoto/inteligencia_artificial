CREATE SCHEMA METRO_PARIS;

CREATE CACHED TABLE METRO_PARIS.TRECHO
( EST_1 VARCHAR(3) NOT NULL, 
  EST_2 VARCHAR(3) NOT NULL, 
  DIST INTEGER NOT NULL,
  DIST_REAL BOOLEAN,
  LINHA INTEGER NOT NULL );
  
CREATE UNIQUE INDEX IDX_TRECHO ON 
METRO_PARIS.TRECHO (EST_1, EST_2, DIST_REAL);


 /*
  * 1 - azul
  * 2 - amarelo
  * 3 - vermelho
  * 4 - verde
  */

INSERT INTO METRO_PARIS.TRECHO VALUES ('E1', 'E2', 11, true, 1);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E2', 'E3', 9, true, 1);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E2', 'E9', 11, true, 2);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E2', 'E10', 4, true, 2);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E3', 'E4', 7, true, 1);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E3', 'E9', 10, true, 3);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E3', 'E13', 19, true, 3);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E4', 'E5', 14, true, 1);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E4', 'E8', 16, true, 4);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E4', 'E13', 12, true, 4);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E5', 'E6', 3, true, 1);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E5', 'E7', 2, true, 2);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E5', 'E8', 33, true, 2);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E8', 'E9', 10, true, 2);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E8', 'E12', 7, true, 4);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E9', 'E11', 14, true, 3);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E13', 'E14', 5, true, 4);

INSERT INTO METRO_PARIS.TRECHO VALUES ('E1', 'E1', 0, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E1', 'E2', 11, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E1', 'E3', 20, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E1', 'E4', 27, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E1', 'E5', 40, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E1', 'E6', 43, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E1', 'E7', 39, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E1', 'E8', 28, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E1', 'E9', 18, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E1', 'E10', 10, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E1', 'E11', 18, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E1', 'E12', 30, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E1', 'E13', 30, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E1', 'E14', 32, false, 0);

INSERT INTO METRO_PARIS.TRECHO VALUES ('E2', 'E2', 0, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E2', 'E3', 9, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E2', 'E4', 16, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E2', 'E5', 29, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E2', 'E6', 32, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E2', 'E7', 28, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E2', 'E8', 19, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E2', 'E9', 11, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E2', 'E10', 4, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E2', 'E11', 17, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E2', 'E12', 23, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E2', 'E13', 21, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E2', 'E14', 24, false, 0);

INSERT INTO METRO_PARIS.TRECHO VALUES ('E3', 'E3', 0, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E3', 'E4', 7, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E3', 'E5', 20, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E3', 'E6', 22, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E3', 'E7', 19, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E3', 'E8', 15, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E3', 'E9', 10, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E3', 'E10', 11, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E3', 'E11', 21, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E3', 'E12', 21, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E3', 'E13', 13, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E3', 'E14', 18, false, 0);

INSERT INTO METRO_PARIS.TRECHO VALUES ('E4', 'E4', 0, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E4', 'E5', 13, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E4', 'E6', 16, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E4', 'E7', 12, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E4', 'E8', 13, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E4', 'E9', 13, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E4', 'E10', 18, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E4', 'E11', 26, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E4', 'E12', 21, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E4', 'E13', 11, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E4', 'E14', 17, false, 0);

INSERT INTO METRO_PARIS.TRECHO VALUES ('E5', 'E5', 0, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E5', 'E6', 3, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E5', 'E7', 2, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E5', 'E8', 21, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E5', 'E9', 25, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E5', 'E10', 31, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E5', 'E11', 38, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E5', 'E12', 27, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E5', 'E13', 16, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E5', 'E14', 20, false, 0);

INSERT INTO METRO_PARIS.TRECHO VALUES ('E6', 'E6', 0, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E6', 'E7', 4, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E6', 'E8', 23, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E6', 'E9', 28, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E6', 'E10', 33, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E6', 'E11', 41, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E6', 'E12', 30, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E6', 'E13', 17, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E6', 'E14', 20, false, 0);

INSERT INTO METRO_PARIS.TRECHO VALUES ('E7', 'E7', 0, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E7', 'E8', 22, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E7', 'E9', 25, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E7', 'E10', 29, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E7', 'E11', 38, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E7', 'E12', 28, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E7', 'E13', 13, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E7', 'E14', 17, false, 0);

INSERT INTO METRO_PARIS.TRECHO VALUES ('E8', 'E8', 0, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E8', 'E9', 9, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E8', 'E10', 22, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E8', 'E11', 18, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E8', 'E12', 7, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E8', 'E13', 25, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E8', 'E14', 30, false, 0);

INSERT INTO METRO_PARIS.TRECHO VALUES ('E9', 'E9', 0, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E9', 'E10', 13, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E9', 'E11', 12, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E9', 'E12', 12, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E9', 'E13', 23, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E9', 'E14', 28, false, 0);

INSERT INTO METRO_PARIS.TRECHO VALUES ('E10', 'E10', 0, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E10', 'E11', 20, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E10', 'E12', 27, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E10', 'E13', 20, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E10', 'E14', 23, false, 0);

INSERT INTO METRO_PARIS.TRECHO VALUES ('E11', 'E11', 0, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E11', 'E12', 15, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E11', 'E13', 35, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E11', 'E14', 39, false, 0);

INSERT INTO METRO_PARIS.TRECHO VALUES ('E12', 'E12', 0, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E12', 'E13', 31, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E12', 'E14', 37, false, 0);

INSERT INTO METRO_PARIS.TRECHO VALUES ('E13', 'E13', 0, false, 0);
INSERT INTO METRO_PARIS.TRECHO VALUES ('E13', 'E14', 5, false, 0);

INSERT INTO METRO_PARIS.TRECHO VALUES ('E14', 'E14', 0, false, 0);

