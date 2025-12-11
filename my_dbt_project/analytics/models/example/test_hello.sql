{{ config(
    materialized='table'
)}}

SELECT 
    1 AS id,
    CURRENT_TIMESTAMP() AS inserted_at,
    'initial row from dbt' as note