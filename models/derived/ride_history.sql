{{ config(materialized='table') }}
    
select
	ride_id,
    start_station_name,
    end_station_name,
    started_at,
    ended_at
from {{ ref('citibike_trips')}}
