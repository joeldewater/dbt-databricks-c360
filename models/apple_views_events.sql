{{
 config(materialized = 'table', file_format = 'delta')
}}

select *
from dbdemos.dbt_c360_bronze_events
where platform = 'ios'
and action = 'view'