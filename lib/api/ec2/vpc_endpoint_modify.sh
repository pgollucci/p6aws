p6_aws_ec2_vpc_endpoint_modify() {
    local vpc_endpoint_id="$1"
    shift 1

    p6_log_or_run aws ec2 modify-vpc-endpoint --vpc-endpoint-id $vpc_endpoint_id "$@"
}
