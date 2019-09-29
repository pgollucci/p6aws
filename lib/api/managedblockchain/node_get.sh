######################################################################
#<
#
# Function:
#      = p6_aws_managedblockchain_node_get(network_id, member_id, node_id)
#
# Arg(s):
#    network_id - 
#    member_id - 
#    node_id - 
#
#
#>
######################################################################
p6_aws_managedblockchain_node_get() {
    local network_id="$1"
    local member_id="$2"
    local node_id="$3"
    shift 3

    p6_run_read_cmd aws managedblockchain get-node --network-id $network_id --member-id $member_id --node-id $node_id "$@"
}