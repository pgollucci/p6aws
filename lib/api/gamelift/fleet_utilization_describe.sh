######################################################################
#<
#
# Function:
#	p6_aws_gamelift_fleet_utilization_describe()
#
#>
######################################################################
p6_aws_gamelift_fleet_utilization_describe() {

    p6_run_read_cmd aws gamelift describe-fleet-utilization "$@"
}