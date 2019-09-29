######################################################################
#<
#
# Function:
#      = p6_aws_managedblockchain_proposal_create(network_id, member_id, actions)
#
# Arg(s):
#    network_id - 
#    member_id - 
#    actions - 
#
#
#>
######################################################################
p6_aws_managedblockchain_proposal_create() {
    local network_id="$1"
    local member_id="$2"
    local actions="$3"
    shift 3

    p6_run_write_cmd aws managedblockchain create-proposal --network-id $network_id --member-id $member_id --actions $actions "$@"
}