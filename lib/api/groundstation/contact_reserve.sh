######################################################################
#<
#
# Function:
#      = p6_aws_groundstation_contact_reserve(end_time, ground_station, mission_profile_arn, satellite_arn, start_time)
#
# Arg(s):
#    end_time - 
#    ground_station - 
#    mission_profile_arn - 
#    satellite_arn - 
#    start_time - 
#
#
#>
######################################################################
p6_aws_groundstation_contact_reserve() {
    local end_time="$1"
    local ground_station="$2"
    local mission_profile_arn="$3"
    local satellite_arn="$4"
    local start_time="$5"
    shift 5

    p6_run_write_cmd aws groundstation reserve-contact --end-time $end_time --ground-station $ground_station --mission-profile-arn $mission_profile_arn --satellite-arn $satellite_arn --start-time $start_time "$@"
}