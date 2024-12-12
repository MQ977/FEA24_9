with 
renomeacao as (
    select
    cast(ID as int) as pk_categoria
    , cast(categoryname as varchar) as nome_categoria
    , cast(description as varchar) as descricao_categoria
    from {{source('erp_northwind','category')}}
) 

select *
from renomeacao