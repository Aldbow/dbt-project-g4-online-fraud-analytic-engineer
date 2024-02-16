

  create or replace view `final-project-df11`.`dbt_final_project_g4`.`dim_table_dest`
  OPTIONS()
  as 

SELECT
    DISTINCT(id_dest),
    nameDest,
    oldbalanceDest,
    newbalanceDest

FROM `final-project-df11`.`dbt_final_project_g4`.`stg_data`;

