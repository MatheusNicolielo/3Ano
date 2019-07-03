SELECT REGEXP_REPLACE('Rodrigo Righetti','( ){5,}', ' ')
FROM dual; /*procuramos por 5 caracteres de espaço substituindo-os por apenas
um caractere de espaço.*/

/*Utilize RegExp_Replace para listar na descrição
somente os números. Utilize a tabela criada
anteriormente (Toys).*/
select regexp_replace(descr,'[^[:digit:]]') from toys;
/*Utilizar Expressão Regular para extrair somente
números de um cpf (tabela Func)*/
select * from func;
SELECT REGEXP_REPLACE(nr_cpf,'[^[:digit:]]') FROM func;
