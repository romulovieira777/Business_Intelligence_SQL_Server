/* MODELAGEM COMERCIO_OLTP */

CREATE DATABASE COMERCIO_OLTP
GO


USE COMERCIO_OLTP
GO


CREATE TABLE CLIENTE(
	IDCLIENTE INT PRIMARY KEY IDENTITY,
	NOME VARCHAR(30) NOT NULL,
	SOBRENOME VARCHAR(30) NOT NULL,
	EMAIL VARCHAR(60) NOT NULL,
	SEXO CHAR(1) NOT NULL,
	NASCIMENTO DATE NOT NULL
)	
GO


CREATE TABLE ENDERECO(
	IDENDERECO INT PRIMARY KEY IDENTITY,
	RUA VARCHAR(100) NOT NULL,
	CIDADE VARCHAR(50) NOT NULL,
	ESTADO VARCHAR(20) NOT NULL,
	REGIAO VARCHAR(20) NOT NULL,
	ID_CLIENTE INT UNIQUE
)
GO


CREATE TABLE VENDEDOR(
	IDVENDEDOR INT PRIMARY KEY IDENTITY,
	NOME VARCHAR(30) NOT NULL,
	SEXO CHAR(1) NOT NULL,
	EMAIL VARCHAR(30) NOT NULL,
	ID_GERENTE INT
)
GO


CREATE TABLE CATEGORIA(
	IDCATEGORIA INT PRIMARY KEY IDENTITY,
	NOME VARCHAR(30) NOT NULL
)
GO


CREATE TABLE FORNECEDOR(
	IDFORNECEDOR INT PRIMARY KEY IDENTITY,
	NOME VARCHAR(50) NOT NULL
)
GO


CREATE TABLE PRODUTO(
	IDPRODUTO INT PRIMARY KEY IDENTITY,
	PRODUTO VARCHAR(100) NOT NULL,
	VALOR NUMERIC(10,2) NOT NULL,
	CUSTO_MEDIO NUMERIC(10,2),
	ID_CATEGORIA INT,
	ID_FORNECEDOR INT
)
GO


CREATE TABLE FORMA_PAGAMENTO(
	IDFORMA INT PRIMARY KEY IDENTITY,
	FORMA VARCHAR(40) NOT NULL
)
GO


CREATE TABLE ITEM_NOTA(
	IDITEMNOTA INT PRIMARY KEY IDENTITY,
	ID_PRODUTO INT,
	ID_NOTA_FISCAL INT,
	QUANTIDADE INT,
	TOTAL NUMERIC(10,2)	
)
GO


CREATE TABLE NOTA_FISCAL(
	IDNOTA INT PRIMARY KEY IDENTITY(1000,10),
	DATA DATE,
	TOTAL NUMERIC(10,2),
	ID_FORMA INT,
	ID_CLIENTE INT,
	ID_VENDEDOR INT
)
GO