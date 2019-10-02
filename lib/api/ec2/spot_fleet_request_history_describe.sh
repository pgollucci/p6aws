######################################################################
#<
#
# Function:
#	p6_aws_ec2_spot_fleet_request_history_describe(spot_fleet_request_id, start_time)
#
#  Args:
#	spot_fleet_request_id - 
#	start_time - 
#
#>
######################################################################
p6_aws_ec2_spot_fleet_request_history_describe() {
    local spot_fleet_request_id="$1"
    local start_time="$2"
    shift 2

    p6_run_read_cmd aws ec2 describe-spot-fleet-request-history --spot-fleet-request-id $spot_fleet_request_id --start-time $start_time "$@"
}