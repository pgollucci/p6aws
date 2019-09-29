######################################################################
#<
#
# Function:
#      = p6_aws_groundstation_mission_profiles_list()
#
#
#
#>
######################################################################
p6_aws_groundstation_mission_profiles_list() {

    p6_run_read_cmd aws groundstation list-mission-profiles "$@"
}