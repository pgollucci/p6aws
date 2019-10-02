######################################################################
#<
#
# Function:
#	p6_aws_managedblockchain_nodes_list(network_id, member_id)
#
#  Args:
#	network_id - 
#	member_id - 
#
#>
######################################################################
p6_aws_managedblockchain_nodes_list() {
    local network_id="$1"
    local member_id="$2"
    shift 2

    p6_run_read_cmd aws managedblockchain list-nodes --network-id $network_id --member-id $member_id "$@"
}