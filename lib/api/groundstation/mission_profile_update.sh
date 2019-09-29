######################################################################
#<
#
# Function:
#      = p6_aws_groundstation_mission_profile_update(mission_profile_id)
#
# Arg(s):
#    mission_profile_id - 
#
#
#>
######################################################################
p6_aws_groundstation_mission_profile_update() {
    local mission_profile_id="$1"
    shift 1

    p6_run_write_cmd aws groundstation update-mission-profile --mission-profile-id $mission_profile_id "$@"
}