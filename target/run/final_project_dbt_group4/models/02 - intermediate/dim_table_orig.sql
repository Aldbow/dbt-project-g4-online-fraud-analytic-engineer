
  
    

    create or replace table `final-project-df11`.`dbt_final_project_g4`.`dim_table_orig`
      
    
    

    OPTIONS()
    as (
      

SELECT
    DISTINCT(id_orig),
    nameOrig,
    oldbalanceOrg,
    newbalanceOrig

FROM `final-project-df11`.`dbt_final_project_g4`.`stg_data`
    );
  