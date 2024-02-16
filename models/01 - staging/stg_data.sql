{{ config(materialized="view") }}

select
    md5( timestamp || nameOrig || nameDest || type || amount) as id_transaction,
    md5( nameOrig || oldbalanceOrg || newbalanceOrig ) as id_orig,
    md5( nameDest || oldbalanceDest || newbalanceDest ) as id_dest,

    CAST(timestamp AS datetime) AS timestamp,
    CAST(amount AS numeric) AS amount,

    type AS transaction_type,

    {{transaction_to_numb ('type') }} AS id_type,

    nameOrig,

    CAST(oldbalanceOrg AS numeric) AS oldbalanceOrg,
    CAST(newbalanceOrig AS numeric) AS newbalanceOrig,

    nameDest,
    CAST(oldbalanceDest AS numeric) AS oldbalanceDest,
    CAST(newbalanceDest AS numeric) AS newbalanceDest,
    CAST(isFraud AS integer) AS isFraud,
    CAST(isFlaggedFraud AS integer) AS isFlaggedFraud,

from {{ source("01 - staging", "raw_data_project") }}