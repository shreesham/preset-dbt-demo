{{ config(materialized='incremental') }}

with station_status_raw as (

    select
        num_bikes_available,
        last_reported,
        num_docks_disabled,
        station_id,
        is_renting,
        station_status,
        eightd_has_available_keys,
        num_docks_available,
        is_returning,
        is_installed,
        legacy_id,
        num_bikes_disabled    
    from citibike_trip_data.public.station_status

)

select *
from station_status_raw