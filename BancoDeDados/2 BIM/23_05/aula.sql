--Recuperar Qualquer sobrenome que comece com P, seja maiusculo ou minusculo(devido o 'i')
select nm_func, nm_sobrenome, dt_nasc
from func
where regexp_like(nm_sobrenome,'^p','i');
--Procurar quem se chama Flavio ou Flávio
select nm_func, f.* from func f
where REGEXP_LIKE(nm_func,'^Fl[aá]','i');--Com '.' não da certo, pois poderia trazer um "Flevio", por exemplo.
--Nomes com exatamente 5 letras
select nm_func, f.* from func f 
where REGEXP_LIKE(nm_func,'^.....$','i');
--OU
select nm_func, f.* from func f 
where REGEXP_LIKE(nm_func,'^.{5}$','i');
--Procurar dois nomes ao mesmo tempo ("joao" e "maria")
select nm_func, f.* from func f
where REGEXP_LIKE(NM_FUNC,('joao|maria'),'i');
--Busca registros cuja coluna DESCR contenha caracteres alfanuméricos
select descr
from toys
where regexp_like(descr,'[^[:digit:]]');
--Pesquisar nomes de 1-5 caracteres
select nm_func
from func
where regexp_like(nm_func,'^.{0,5}$','i');
--Procura por 'i', iniciando sua busca na segunda posição e apenas caracteres minúsculos (case sensitive, a opção 'c' da expressão)
select REGEXP_COUNT('Rodrigo Righetti','i',2,'c') from dual;
--Procura por ocorrências do caractere 'R', iniciando na primeira posição e apenas caracteres maiusculos
select regexp_count('Ricardo Rezende','R',1,'c')
from dual;
--conta caracteres da ocorrencia
select regexp_count('ACabc','\w',1,'c') from dual;
--Procura por ocorrências de qualquere caractere maiusculo
select regexp_count('ACabc','[A-Z]',1,'c') from dual;
--Procura por ocorrências de qualquere caractere minusculo
select regexp_count('ACabc','[a-z]',1,'c') from dual;
--Procura por ocorrências de qualquere alfanumerico
select regexp_count('123456','\d',1) from dual; --ou  select regexp_count('123456','[0-9]',1) from dual;
--Replace, procurando 5 espaços em branco para substituir por somente um
select regexp_replace('Rodrigo     Righetti','( ){5,}',' ') from dual;
--Procurar na descricao somente os numeros
select regexp_replace(descr,'[^[:digit:]]') from toys;
--Extrair somente números de um CPF
select regexp_replace(nr_cpf,'[^[:digit:]]') from func;
--Procura a posição do primeiro caracter numérico da expressão abaixo, utilizando regexp_instr
select RegExp_Instr('AStringWithNumbers1234 etc','[^[:alpha:]]') from dual;
--Procura a posição do primeiro caracter da expressão abaixo, utilizando regexp_instr
select RegExp_Instr('AStringWithNumbers1234 etc','[^[:digit:]]') from dual;
select * from func
/*
 	   - {m} : Intervalo -> combina exatamente m ocorrências do caractere.
       - {m,} : Intervalo -> combina no mínimo m ocorrências do caractere.
       - {m,n} : Intervalo -> combina no mínimo m ocorrência do caractere e no máximo n ocorrências da subexpressão precedente.
*/