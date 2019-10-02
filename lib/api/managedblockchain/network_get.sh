######################################################################
#<
#
# Function:
#	p6_aws_managedblockchain_network_get(network_id)
#
#  Args:
#	network_id - 
#
#>
######################################################################
p6_aws_managedblockchain_network_get() {
    local network_id="$1"
    shift 1

    p6_run_read_cmd aws managedblockchain get-network --network-id $network_id "$@"
}