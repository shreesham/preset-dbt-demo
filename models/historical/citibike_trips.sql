{{ config(materialized='table') }}
    
select * 
from CITIBIKE_TRIP_DATA.PUBLIC.CITIBIKE_TRIPS
