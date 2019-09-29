######################################################################
#<
#
# Function:
#      = p6_aws_managedblockchain_member_get(network_id, member_id)
#
# Arg(s):
#    network_id - 
#    member_id - 
#
#
#>
######################################################################
p6_aws_managedblockchain_member_get() {
    local network_id="$1"
    local member_id="$2"
    shift 2

    p6_run_read_cmd aws managedblockchain get-member --network-id $network_id --member-id $member_id "$@"
}