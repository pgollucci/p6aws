p6_aws_ec2_network_acl_delete() {
    local network_acl_id="$1"
    shift 1

    p6_log_or_run aws ec2 delete-network-acl --network-acl-id $network_acl_id "$@"
}
