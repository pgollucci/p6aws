p6_aws_ec2_spot_instance_requests_cancel() {
    local spot_instance_request_ids="$1"
    shift 1

    p6_run_write_cmd aws ec2 cancel-spot-instance-requests --spot-instance-request-ids $spot_instance_request_ids "$@"
}
