{{ config(materialized='table') }}
    
select * 
from citibike_trip_data.public.citibike_trips
