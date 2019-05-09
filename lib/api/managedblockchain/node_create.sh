p6_aws_managedblockchain_node_create() {
    local network_id="$1"
    local member_id="$2"
    local node_configuration="$3"
    shift 3

    p6_run_write_cmd aws managedblockchain create-node --network-id $network_id --member-id $member_id --node-configuration $node_configuration "$@"
}
