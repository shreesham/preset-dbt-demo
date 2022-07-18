{{ config(materialized='table') }}

select * from {{ ref('citibike_trips')}} where member_casual = 'member'
  