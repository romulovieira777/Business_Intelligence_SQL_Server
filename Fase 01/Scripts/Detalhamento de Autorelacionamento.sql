/* Escolhendo um Banco de Dados */
USE
	COMERCIO_OLTP
GO


/* Detalhamento do Autorelacionamento da Tabela Vendedor*/
SELECT
	V.IDVENDEDOR,
	V.NOME AS GERENTE,
	G.NOME AS VENDEDOR,
	G.SEXO,
	G.ID_GERENTE,
	G.IDVENDEDOR
FROM
	VENDEDOR V
INNER JOIN
	VENDEDOR G
ON
	V.IDVENDEDOR = G.ID_GERENTE
GO