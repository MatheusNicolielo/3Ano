/*
->Existem dois tipos diferentes de dados em uma tabela temporária:
    .Temporários em relação à duração da transação
    .Temporários em relação à duração da sessão.

->A longevidade dos dados temporários é controlada pela cláusula on
commit;
    .on commit delete rows: remove todas as linhas da tabela
temporária quando um comando commit ou rollback é emitido;
    .on commit preserve rows mantém as linhas na tabela além do
limite da transação.
*/

CREATE GLOBAL TEMPORARY TABLE ESOFT(
    NOME VARCHAR2(25),
    ENDERECO VARCHAR2(25),
    CIDADE VARCHAR2(25)
)
ON COMMIT DELETE ROWS;

CREATE GLOBAL TEMPORARY TABLE ESOFT_PRESERVE(
    NOME VARCHAR2(25),
    ENDERECO VARCHAR2(25),
    CIDADE VARCHAR2(25)
)
ON COMMIT PRESERVE ROWS;

INSERT INTO ESOFT_PRESERVE VALUES ('MATHEUS', 'RUA RUI CELIDONIO', 'MARINGA');
SELECT * FROM ESOFT_PRESERVE;

COMMIT;
