create or replace table station_status (num_bikes_availabe, last_reported, num_docks_disabled, 
                                        station_id, is_renting, station_status, 
                                        eightd_has_available_keys, num_docks_available, is_returning, 
                                        is_installed, num_bikes_available,legacy_id, 
                                        num_bikes_disabled) 
                                            as (
                                                    select
                                                        t.value:"num_bikes_available",
                                                        t.value:"last_reported",
                                                        t.value:"num_docks_disabled",
                                                        t.value:"station_id",
                                                        t.value:"is_renting",
                                                        t.value:"station_status",
                                                        t.value:"eightd_has_available_keys",
                                                        t.value:"num_docks_available",
                                                        t.value:"is_returning",
                                                        t.value:"is_installed",
                                                        t.value:"num_ebikes_available",
                                                        t.value:"legacy_id",
                                                        t.value:"num_bikes_disabled"    
                                                    from @station_status_stage/station_status.json, lateral flatten(parse_json($1):data.stations) as t
                                                );