select regexp_count('Rodrigo Righetti','i',2,'c')
from dual;
/*
    Busca pelo caractere i
    Iniciando na posi��o 2
    Apenas i minusculo, devido o c de 'case sensitive'
*/

select regexp_count('Ricardo Rezende','R',1,'c') from dual;

select regexp_count('ACabc','\w',1) from dual;/*conta caracteres,
igual select regexp_count('ACabc','[^[:digit:]]',1) from dual;
*/

select regexp_count('123456','\d',1) from dual; -- qualquer caractere numerico


/*
 	   - {m} : Intervalo -> combina exatamente m ocorr�ncias do caractere.
       - {m,} : Intervalo -> combina no m�nimo m ocorr�ncias do caractere.
       - {m,n} : Intervalo -> combina no m�nimo m ocorr�ncia do caractere e no m�ximo n ocorr�ncias da subexpress�o precedente.
*/

