p6_aws_ec2_spot_fleet_request() {
    local spot_fleet_request_config="$1"
    shift 1

    p6_log_or_run aws ec2 request-spot-fleet --spot-fleet-request-config $spot_fleet_request_config "$@"
}
