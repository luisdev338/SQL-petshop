/*criando um banco de dados - SQL*/

CREATE DATABASE   sistemadeacademia;

/*exibir se o banco de dados foi criado */

show databases;

-- deletar um banco de dados

DROP DATABASE sistemadeacademia;

--USAR O BANCO DE DADOS QUE VOU CRIAR TABELAS E DADOS NA SEQUENCIA
USE DATABASE sistemadeacademia; --no modelo maria DB descontinuou

--CRIANDO TABELA NO BANCO DE DADOS
CREATE TABLE cadastrocliente(
    cpf CHAR(15) primary key NOT NULL,
    nomecompleto VARCHAR(200) NOT NULL,
    datadenascimento DATE NOT NULL,
    email CHAR(50) UNIQUE NOT NULL,
    celula INT(15) NOT NULL,
    cep INT(8) NOT NULL,
    rua VARCHAR(50) NOT NULL,
    numero CHAR(8) NOT NULL, 
    complemento VARCHAR(50),
    bairro CHAR(20) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado CHAR(9) NOT NULL
    );

--adicionando um atributo na tabela com alter
ALTER TABLE cadastrocliente
ADD instagram VARCHAR(50);

--ESXCLUINDO UM ATRIBUTO DA TABEA COM ALTER
ALTER TABLE cadastrocliente
DROP COLUMN instagram;

--renomendo a coluna da tabela
ALTER TABLE cadastrocliente
CHANGE COLUMN nomecompleto nomesobrenome VARCHAR(200) NOT NULL;

--ALTERANDO O DATATYPE DE UMA COLUNA
ALTER TABLE cadastrocliente
MODIFY COLUMN nomesobrenome VARCHAR(250) NOT NULL;

--DELETANDO A TABELA TODA
DROP TABLE cadastrocliente;