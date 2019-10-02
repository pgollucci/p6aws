######################################################################
#<
#
# Function:
#	p6_aws_robomaker_fleet_describe(fleet)
#
#  Args:
#	fleet - 
#
#>
######################################################################
p6_aws_robomaker_fleet_describe() {
    local fleet="$1"
    shift 1

    p6_run_read_cmd aws robomaker describe-fleet --fleet $fleet "$@"
}