SELECT REGEXP_REPLACE('Rodrigo Righetti','( ){5,}', ' ')
FROM dual; /*procuramos por 5 caracteres de espa�o substituindo-os por apenas
um caractere de espa�o.*/

/*Utilize RegExp_Replace para listar na descri��o
somente os n�meros. Utilize a tabela criada
anteriormente (Toys).*/
select regexp_replace(descr,'[^[:digit:]]') from toys;
/*Utilizar Express�o Regular para extrair somente
n�meros de um cpf (tabela Func)*/
select * from func;
SELECT REGEXP_REPLACE(nr_cpf,'[^[:digit:]]') FROM func;
