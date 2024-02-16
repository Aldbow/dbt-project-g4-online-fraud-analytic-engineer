
  
    

    create or replace table `final-project-df11`.`dbt_final_project_g4`.`cluster_by_fraud`
      
    
    cluster by isFraud

    OPTIONS()
    as (
      

SELECT
    *
FROM
    `final-project-df11`.`dbt_final_project_g4`.`fact_table`
    );
  