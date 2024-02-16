{{ config(
    materialized = 'table'
    )
}}

SELECT DISTINCT
    stg.id_transaction AS id_transaction,
    stg.timestamp AS date,
    transaction_type.id_type AS id_type,
    stg.amount AS amount,
    orig.id_orig AS id_orig,
    dest.id_dest AS id_dest,
    stg.isFraud AS isFraud,
    stg.isFlaggedFraud AS isFlaggedFraud,

FROM {{ ref('stg_data') }} AS stg

LEFT JOIN {{ ref('dim_table_dest') }} AS dest
    ON stg.id_dest = dest.id_dest
LEFT JOIN {{ ref ('dim_table_type') }} AS transaction_type
    ON stg.id_type = transaction_type.id_type
LEFT JOIN {{ ref('dim_table_orig') }} AS orig
    ON stg.id_orig = orig.id_orig