######################################################################
#<
#
# Function:
#      = p6_aws_robomaker_fleets_list()
#
#
#
#>
######################################################################
p6_aws_robomaker_fleets_list() {

    p6_run_read_cmd aws robomaker list-fleets "$@"
}