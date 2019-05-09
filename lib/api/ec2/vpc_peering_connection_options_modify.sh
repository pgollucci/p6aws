p6_aws_ec2_vpc_peering_connection_options_modify() {
    local vpc_peering_connection_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 modify-vpc-peering-connection-options --vpc-peering-connection-id $vpc_peering_connection_id "$@"
}
