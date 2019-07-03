/*
->As fun��es s�o: 
    .REGEXP_LIKE 
    .REGEXP_INSTR
    .REGEXP_SUBSTR,
    .REGEXP_REPLACE
    .REGEXP_COUNT


->(. - ponto): usado para encontrar qualquer caractere na posi��o
indicada. 

->(^ - circunflexo): usado para apontar o in�cio de uma linha. Exemplo:
^rod encontrar� �Rodrigo�, �rod�;

->($ - cifr�o): usado para apontar o final de uma linha. Exemplo: rod$
encontrar� �prod�, �rod�;

->(* - asterisco): usado para encontrar m�ltiplos caracteres, similar ao (%
- porcentagem) usado na fun��o LIKE.
*/

select nm_func, nm_sobrenome,dt_nasc
    from func
where REGEXP_LIKE(TO_CHAR(DT_NASC,'YYYY'),'^197[0-5]$') --Ano 1970 at� 1975
AND   REGEXP_LIKE(TO_CHAR(DT_NASC,'DD'),'0[1-9]'); -- Do dia 01 ao dia 09

select nm_func, nm_sobrenome, dt_nasc
from func
where regexp_like(nm_sobrenome,'^p', 'i'); /*
Qualquer funcion�rio que o nome comece com p devido -> ^p n�o importando ser
maiusculo ou minusculo devido o i.*/

select nm_func 
from func
where regexp_like(nm_func,'^Fl[a�]vio','i'); -- Flavio, Fl�vio, flavio, etc.

select nm_func
from func
where regexp_like(nm_func,'^.....$','i');
--ou
select nm_func
from func
where regexp_like(nm_func,'^.{5}$','i'); -- qualquer nome com 5 char

select nm_func
from func
where regexp_like(nm_func,'(joao|maria)','i'); --nome joao ou maria

SELECT DESCR
FROM TOYS
WHERE REGEXP_LIKE(DESCR,'[^[:digit:]]'); /*Registros que na coluna DESCR 
contenham numero*/
