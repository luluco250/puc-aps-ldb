DROP TABLE IF EXISTS empregado;
DROP TABLE IF EXISTS departamento;
DROP TABLE IF EXISTS projeto;
DROP TABLE IF EXISTS trabalha_no;
DROP TABLE IF EXISTS deploc;
DROP TABLE IF EXISTS dependente;



CREATE TABLE empregado
(

Ident INTEGER NOT NULL,
Nome CHAR (200) NOT NULL,
Sal  REAL NOT NULL,
Endereco CHAR(300) NULL,
Sexo CHAR(1) NOT NULL,
DataNasc DATETIME NULL, 
DepNum INTEGER NOT NULL,
SuperIdent INTEGER NULL

);


insert into empregado VALUES (100, 'Maria das Flores Silva', 1500.10, 'Rua Bolivar, 25 - RIO DE JANEIRO', 'F', '1998-05-20', 123, 1300);
insert into empregado VALUES (200, 'Jose Dias', 500.90, 'Rua Das Couves, 450', 'M', '1965-12-01', 123, 100);
insert into empregado VALUES (300, 'Bruno de Oliveira Barreto', 400.00, 'Travessa Sao Bernardo - casa 02 - bloco 01',  'M' , '1970-06-25', 123, 100);
insert into empregado VALUES (400, 'Saci Perere', 2500.00, 'Av. Nossa Senhora de Copacabana, 1600/705 - RIO DE JANEIRO', 'M'  ,'1990-11-11', 456, 600);
insert into empregado VALUES (500, 'Dona Florinda', 2700.90, 'Rua Siqueira Campos, 145 - RIO DE JANEIRO','F' ,'1982-06-05', 456, 600);
insert into empregado VALUES (600, 'Jose Antunes', 3500.90, 'Avenida Republica do Chile, 65 - RIO DE JANEIRO', 'M' ,  '1969-01-30', 456, 1300);
insert into empregado VALUES (700, 'Joao Roberto Alonso', 600.00, 'Av da Fé, 700 - SALVADOR', 'M'   , '1968-02-20', 456, 600);
insert into empregado VALUES (800, 'Eulalia Mendes', 600.00, 'Rua Souza de Miranda -  SAO PAULO', 'F'  , '1959-04-25', 456, 600);
insert into empregado VALUES (1300, 'Zuleica Guedes', 180.10, 'Rua Santa Clara, 33/605 - SALVADOR','F' ,'1960-08-22', 072, NULL);
insert into empregado VALUES (1000, 'Vitor Souza Junior', 1900.00, 'Rua da Constelacao, casa 40 - SAO PAULO',  'M' ,  '1991-11-11', 002, 1300);
insert into empregado VALUES (900, 'Ana Maria', 600.00, 'Rua Ana Bernardes - 1234 - SALVADOR', 'F' , '1988-06-25', 002, 1000);
insert into empregado VALUES (1100, 'Sandra Maria', 1090.00, 'Rua Mendes de Miranda, 65 - Bairro Consolosação. Cidade: SAP PAULO', 'F' , '1989-07-17', 002, 1000);
insert into empregado VALUES (1200, 'Ziraldo', 400.00, 'Rua de Todos os Santos, predio 300, ap 402 - RIO DE JANEIRO', 'M' ,'2004-10-15', 002, 1000);
insert into empregado VALUES (1400, 'Carlos Marlos', 160.00, 'Av. 16 de maio, ap 405 - SALVADOR','M' ,'1998-04-13', 002, 1000);
insert into empregado VALUES (1500, 'Soraia Cavalcanti', 120.00, 'Rua Republica do Peru, 67/604 - SAO PAULO','F' ,'1975-08-25', 002, 1000);
insert into empregado VALUES (1600, 'Hernane Matos',1116.86, 'Rua Republica do Peru, 67/604 - SALVADOR','F' ,'1955-09-15', 002, 1000);


CREATE TABLE departamento
(

Num INTEGER NOT NULL,
Nome CHAR(200) NOT NULL,
IdentGer INTEGER  NULL,
DataIni DATETIME NULL

);

insert into departamento Values( 123 , 'VENDAS' , 100 ,'2014-01-01'  );
insert into departamento Values( 456 , 'MARKETING' , 600,'2016-12-01');
insert into departamento Values( 900 , 'NOVAS TECNOLOGIAS' , NULL, NULL );
insert into departamento VALUES (072, 'DIRETORIA', 1300 , '2017-02-01');
insert into departamento VALUES (002, 'CONTROLADORIA', NULL, NULL );


CREATE TABLE projeto
(

Num INTEGER NOT NULL,
Nome CHAR(200) NOT NULL,
Local CHAR (50) NOT NULL,
DepNum INTEGER NOT NULL
);


insert into PROJETO VALUES (8500 , 'NOVAS ACOES DE VENDAS', 'RIO DE JANEIRO' , 123 );
insert into PROJETO VALUES (8582 , 'VENDAS DE NATAL 2018', 'SAO PAULO' , 123 );
insert into PROJETO VALUES (9663 , 'ACAO DE VENDAS- DIA DOS PAIS', 'RIO DE JANEIRO' , 123 );
insert into PROJETO VALUES (9100 , 'RESGATE DE ANTIGOS CLIENTES', 'SALVADOR' , 456 );
insert into PROJETO VALUES (1101 , 'SANEAMENTO DE DADOS', 'RIO DE JANEIRO' , 002 );
insert into PROJETO VALUES (1102 , 'REVISAO DOS BANCOS DE DADOS', 'SALVADOR' , 002 );

CREATE TABLE trabalha_no
(

IdentEmp INTEGER NOT NULL,
ProjNum  INTEGER NOT NULL,
HRS INTEGER NULL
);


insert into trabalha_no VALUES (600, 9100, 40 );
insert into trabalha_no VALUES (600, 1102, 10 );
insert into trabalha_no VALUES (500, 9100, 40 );
insert into trabalha_no VALUES (400, 9100, 40 );
insert into trabalha_no VALUES (100, 1102, 10 );
insert into trabalha_no VALUES (200, 1102, 10 );
insert into trabalha_no VALUES (300, 1102, 10 );
insert into trabalha_no VALUES (400, 1102, 10 );
insert into trabalha_no VALUES (500, 1102, 10 );
insert into trabalha_no VALUES (600, 1102, 10 );
insert into trabalha_no VALUES (700, 1102, 10 );
insert into trabalha_no VALUES (800, 1102, 10 );
insert into trabalha_no VALUES (900, 1102, 10 );
insert into trabalha_no VALUES (1000, 1102, 10 );
insert into trabalha_no VALUES (1100, 1102, 10 );
insert into trabalha_no VALUES (1200, 1102, 10 );
insert into trabalha_no VALUES (1300, 1102, 10 );
insert into trabalha_no VALUES (1400, 1102, 10 );
insert into trabalha_no VALUES (1500, 1102, 10 );

insert into trabalha_no VALUES (700, 8582, 80 );
insert into trabalha_no VALUES (800, 8582, 80 );
insert into trabalha_no VALUES (800, 8500, 20 );
insert into trabalha_no VALUES (700, 8582, 10 );


insert into trabalha_no VALUES (1100, 1101, 10 );
insert into trabalha_no VALUES (1200, 1101, 10 );


CREATE TABLE dependente
(

Nome CHAR(200) NOT NULL,
IdentEmp INTEGER NOT NULL,
Sexo CHAR(1) NOT NULL,
Parentesco CHAR(25)  NULL,
DataNasc DATETIME NOT NULL 
);


INSERT INTO DEPENDENTE VALUES ('Bruno Marins', 'M', '2016-01-01', 'FILHO(A)', 300);
INSERT INTO DEPENDENTE VALUES ('Marta Marins', 'F', '2017-02-25', 'FILHO(A)', 300);
INSERT INTO DEPENDENTE VALUES ('Douglas Marins', 'M', '2016-01-01', 'FILHO(A)', 300);
INSERT INTO DEPENDENTE VALUES ('Sandra Maria', 'F', '2014-06-03', 'FILHO(A)', 1100);
INSERT INTO DEPENDENTE VALUES ('Marcio Moura Silva Martins', 'M', '2014-06-03', 'FILHO(A)', 1400);
INSERT INTO DEPENDENTE VALUES ('Juliano Freitas', 'M', '2013-09-14', 'FILHO(A)', 1200);
INSERT INTO DEPENDENTE VALUES ('Fernanda', 'M', '2014-06-03', 'FILHO(A)', 999);


CREATE TABLE deploc
(
	DepNum INTEGER NOT NULL,
	Loc CHAR(50) NOT NULL
);




insert into deploc values( 123 , 'SALVADOR' );
insert into deploc values( 456, 'SALVADOR' );
insert into deploc values( 456, 'RIO DE JANEIRO');

insert into deploc values( 072, 'SAO PAULO');
insert into deploc values( 900 , 'SALVADOR');
insert into deploc values( 002, 'BRASILIA');

/*
CONSULTAS

1) select strftime('%m', DataNasc) as Month
from empregado
*/