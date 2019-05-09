p6_aws_ec2_vpc_endpoints_delete() {
    local vpc_endpoint_ids="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-vpc-endpoints --vpc-endpoint-ids $vpc_endpoint_ids "$@"
}
