
  
    

    create or replace table `final-project-df11`.`dbt_final_project_g4`.`partition_date`
      
    partition by timestamp_trunc(date, day)
    

    OPTIONS()
    as (
      

SELECT
    *
FROM
    `final-project-df11`.`dbt_final_project_g4`.`fact_table`
    );
  