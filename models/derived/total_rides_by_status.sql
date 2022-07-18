{{ config(materialized='table') }}

select 
    count(ride_id) as total_rides, 
    start_station_name, 
    end_station_name, 
    member_casual
    
from {{ ref('citibike_trips') }}
    
group by member_casual, start_station_name, end_station_name