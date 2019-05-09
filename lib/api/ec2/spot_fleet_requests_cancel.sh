p6_aws_ec2_spot_fleet_requests_cancel() {
    local spot_fleet_request_ids="$1"
    local terminate_instances="$2"
    shift 2

    p6_log_or_run aws ec2 cancel-spot-fleet-requests --spot-fleet-request-ids $spot_fleet_request_ids --terminate-instances $terminate_instances "$@"
}
