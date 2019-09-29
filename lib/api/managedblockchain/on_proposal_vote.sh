######################################################################
#<
#
# Function:
#      = p6_aws_managedblockchain_on_proposal_vote(network_id, proposal_id, voter_member_id, vote)
#
# Arg(s):
#    network_id - 
#    proposal_id - 
#    voter_member_id - 
#    vote - 
#
#
#>
######################################################################
p6_aws_managedblockchain_on_proposal_vote() {
    local network_id="$1"
    local proposal_id="$2"
    local voter_member_id="$3"
    local vote="$4"
    shift 4

    p6_run_write_cmd aws managedblockchain vote-on-proposal --network-id $network_id --proposal-id $proposal_id --voter-member-id $voter_member_id --vote $vote "$@"
}