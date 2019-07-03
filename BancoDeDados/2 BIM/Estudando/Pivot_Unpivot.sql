create table testPivot as (
    select * from (
        select cd_depto, nr_cargo from func
)
PIVOT
(
    COUNT(NR_CARGO)
    FOR NR_CARGO IN (43,52,53,54)
));
SELECT * FROM TESTPIVOT
UNPIVOT
(
  QTDE
  FOR NR_CARGO IN ("54","52","43","53")
)
ORDER BY CD_DEPTO,NR_CARGO;

create table TabPivoCargo as
select * from (
    select cd_depto, nr_cargo from func
)
pivot
(
    count(nr_cargo)
    for NR_CARGO in (54,42,43,53)
);

select * from TabPivoCargo
unpivot
(
    QTDE
    for NR_CARGO in ("54","42","43","53")
);

select distinct (cd_depto),count(nr_cargo) from func group by cd_depto;

