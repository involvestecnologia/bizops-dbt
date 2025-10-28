-- models/sales-snowflake/SALESFORCE_OPPORTUNITY.sql
{{ config(
    schema='FVT_SALESFORCE',
    materialized="table"
) }}
SELECT 
    ID, 
    NAME, 
    CREATED_DATE, 
    LAST_MODIFIED_DATE 
FROM {{ source('FVT_SALESFORCE', 'OPPORTUNITY') }}