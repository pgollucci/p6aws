######################################################################
#<
#
# Function:
#	p6_aws_robomaker_robots_list()
#
#>
######################################################################
p6_aws_robomaker_robots_list() {

    p6_run_read_cmd aws robomaker list-robots "$@"
}