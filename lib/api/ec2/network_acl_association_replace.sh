p6_aws_ec2_network_acl_association_replace() {
    local association_id="$1"
    local network_acl_id="$2"
    shift 2

    p6_log_or_run aws ec2 replace-network-acl-association --association-id $association_id --network-acl-id $network_acl_id "$@"
}
