p6_aws_ec2_network_acl_delete() {
    local network_acl_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-network-acl --network-acl-id $network_acl_id "$@"
}
