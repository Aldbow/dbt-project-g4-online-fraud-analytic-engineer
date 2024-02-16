-- macros/fraud_status_macro.sql

{% macro fraud_status(isFraud, isFlaggedFraud) %}
    CASE
        WHEN {{ isFraud }} = 1 THEN 'fraud'
        WHEN {{ isFlaggedFraud }} = 1 THEN 'flagged'
        ELSE 'valid'
    END
{% endmacro %}