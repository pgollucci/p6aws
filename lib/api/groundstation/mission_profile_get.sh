######################################################################
#<
#
# Function:
#      = p6_aws_groundstation_mission_profile_get(mission_profile_id)
#
# Arg(s):
#    mission_profile_id - 
#
#
#>
######################################################################
p6_aws_groundstation_mission_profile_get() {
    local mission_profile_id="$1"
    shift 1

    p6_run_read_cmd aws groundstation get-mission-profile --mission-profile-id $mission_profile_id "$@"
}