######################################################################
#<
#
# Function:
#      = p6_aws_groundstation_ground_stations_list()
#
#
#
#>
######################################################################
p6_aws_groundstation_ground_stations_list() {

    p6_run_read_cmd aws groundstation list-ground-stations "$@"
}