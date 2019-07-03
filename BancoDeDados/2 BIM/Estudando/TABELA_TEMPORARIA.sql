/*
->Existem dois tipos diferentes de dados em uma tabela tempor�ria:
    .Tempor�rios em rela��o � dura��o da transa��o
    .Tempor�rios em rela��o � dura��o da sess�o.

->A longevidade dos dados tempor�rios � controlada pela cl�usula on
commit;
    .on commit delete rows: remove todas as linhas da tabela
tempor�ria quando um comando commit ou rollback � emitido;
    .on commit preserve rows mant�m as linhas na tabela al�m do
limite da transa��o.
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
