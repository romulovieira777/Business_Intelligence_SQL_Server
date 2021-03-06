/* Escolhendo um Banco de Dados */
USE
	COMERCIO_OLTP
GO


/* Criando uma Tabela */
CREATE TABLE LIVROS(
	IDLIVRO INT PRIMARY KEY IDENTITY,
	NOME VARCHAR(30),
	VALOR DECIMAL(10,2)
)
GO


/* Inserindo Dados na Tabela Livros */
INSERT INTO
	LIVROS
VALUES (
	'SQL',
	100.00
)


INSERT INTO
	LIVROS
VALUES (
	'JAVA',
	60.00
)


INSERT INTO
	LIVROS
VALUES (
	'PYTHON',
	110.00
)


INSERT INTO
	LIVROS
VALUES (
	'SPARK',
	190.00
)
GO


/* Verificando os Dados Inseridos na Tabela Livros */
SELECT
	*
FROM
	LIVROS
GO


/* Criando um Cursor */

/* Declarando as Variáveis */
DECLARE
	C_REG CURSOR FOR
	SELECT NOME, VALOR FROM LIVROS

DECLARE
	@NOME VARCHAR(30),
	@PRECO DECIMAL(10,2)

OPEN C_REG

FETCH NEXT FROM C_REG
INTO @NOME, @PRECO

WHILE @@FETCH_STATUS = 0
BEGIN
	PRINT 'VALOR DO LIVRO ' + @NOME + ' R$' + CAST(@PRECO AS VARCHAR(10))
	FETCH NEXT FROM C_REG
	INTO @NOME, @PRECO

END
CLOSE C_REG
DEALLOCATE C_REG
GO