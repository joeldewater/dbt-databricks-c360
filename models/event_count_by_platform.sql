{{
 config(materialized = 'table', file_format = 'delta')
}}

select 
  platform,
  count(event_id) as count_event_id
from dbdemos.dbt_c360_bronze_events
group by
  platform