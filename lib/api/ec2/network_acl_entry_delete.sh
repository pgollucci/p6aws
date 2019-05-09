p6_aws_ec2_network_acl_entry_delete() {
    local egress="$1"
    local network_acl_id="$2"
    local rule_number="$3"
    shift 3

    p6_run_write_cmd aws ec2 delete-network-acl-entry --egress $egress --network-acl-id $network_acl_id --rule-number $rule_number "$@"
}
