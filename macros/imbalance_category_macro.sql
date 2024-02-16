-- macros/imbalance_category_macro.sql

{% macro imbalance_category(oldbalanceOrg, newbalanceOrig, oldbalanceDest, newbalanceDest, amount) %}
    CASE
        WHEN {{ newbalanceOrig }} != {{ oldbalanceOrg }} - {{ amount }} AND {{ newbalanceDest }} = {{ oldbalanceDest }} + {{ amount }} THEN 'imbalance out'
        WHEN {{ newbalanceDest }} != {{ oldbalanceDest }} + {{ amount }} AND {{ newbalanceOrig }} = {{ oldbalanceOrg }} - {{ amount }} THEN 'imbalance in'
        WHEN {{ newbalanceOrig }} != {{ oldbalanceOrg }} - {{ amount }} OR {{ newbalanceDest }} != {{ oldbalanceDest }} + {{ amount }} THEN 'imbalance all'
        ELSE 'balance'
    END
{% endmacro %}