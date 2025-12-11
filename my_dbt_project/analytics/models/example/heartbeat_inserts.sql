{{ config(
    materialized='incremental'
)}}

SELECT 
    GENERATE_UUID() AS id,
    CURRENT_TIMESTAMP AS inserted_at,
    'hello from dbt run' as note

{% if is_incremental() %}
-- In a real project, you'd filter new data here.
-- For this test, we don't need to filter anything:
-- each run will append one new row.
{% endif %}