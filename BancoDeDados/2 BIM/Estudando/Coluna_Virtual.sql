CREATE OR REPLACE FUNCTION calcularMedia(nota1 in number, nota2 in number) return float deterministic as
valor_media float;
begin
    valor_media := (nota1+nota2)/2;
    return valor_media;
end;
create table virtual (
   codigo int,
   nota1 float,
   nota2 float,
   media as (calcularMedia(nota1,nota2)), -- SIMPLES
   status as 
   (case when ((calcularMedia(nota1,nota2))<4) then 'REPROVADO' 
   WHEN (((calcularMedia(nota1,nota2)) >= 4) AND ((calcularMedia(nota1,nota2)) <70))THEN 'EXAME' 
   ELSE 'APROVADO' END) -- COM CASE
);
insert into virtual (codigo, nota1, nota2) values (1,10,5);
select * from virtual;