######################################################################
#<
#
# Function:
#      = p6_aws_ec2_spot_fleet_request(spot_fleet_request_config)
#
# Arg(s):
#    spot_fleet_request_config - 
#
#
#>
######################################################################
p6_aws_ec2_spot_fleet_request() {
    local spot_fleet_request_config="$1"
    shift 1

    p6_run_write_cmd aws ec2 request-spot-fleet --spot-fleet-request-config $spot_fleet_request_config "$@"
}