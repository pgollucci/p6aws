######################################################################
#<
#
# Function:
#	p6_aws_worklink_fleets_list()
#
#>
######################################################################
p6_aws_worklink_fleets_list() {

    p6_run_read_cmd aws worklink list-fleets "$@"
}