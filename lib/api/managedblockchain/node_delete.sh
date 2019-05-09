p6_aws_managedblockchain_node_delete() {
    local network_id="$1"
    local member_id="$2"
    local node_id="$3"
    shift 3

    p6_run_write_cmd aws managedblockchain delete-node --network-id $network_id --member-id $member_id --node-id $node_id "$@"
}
