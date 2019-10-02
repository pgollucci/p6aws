######################################################################
#<
#
# Function:
#	p6_aws_managedblockchain_proposal_votes_list(network_id, proposal_id)
#
#  Args:
#	network_id - 
#	proposal_id - 
#
#>
######################################################################
p6_aws_managedblockchain_proposal_votes_list() {
    local network_id="$1"
    local proposal_id="$2"
    shift 2

    p6_run_read_cmd aws managedblockchain list-proposal-votes --network-id $network_id --proposal-id $proposal_id "$@"
}