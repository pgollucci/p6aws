p6_aws_ec2_spot_fleet_request_modify() {
    local spot_fleet_request_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 modify-spot-fleet-request --spot-fleet-request-id $spot_fleet_request_id "$@"
}
