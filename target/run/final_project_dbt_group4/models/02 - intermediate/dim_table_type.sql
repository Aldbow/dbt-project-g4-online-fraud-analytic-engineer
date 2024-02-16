

  create or replace view `final-project-df11`.`dbt_final_project_g4`.`dim_table_type`
  OPTIONS()
  as 

SELECT
    DISTINCT(id_type),
    transaction_type

FROM `final-project-df11`.`dbt_final_project_g4`.`stg_data`;

