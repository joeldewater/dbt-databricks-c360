{{
 config(materialized = 'table', file_format = 'delta', schema = "jdw")
}}

select
  user_id,
  sum(amount) as sum_amount
from dbdemos.dbt_c360_bronze_orders
group by
  user_id