######################################################################
#<
#
# Function:
#	p6_aws_managedblockchain_members_list(network_id)
#
#  Args:
#	network_id - 
#
#>
######################################################################
p6_aws_managedblockchain_members_list() {
    local network_id="$1"
    shift 1

    p6_run_read_cmd aws managedblockchain list-members --network-id $network_id "$@"
}