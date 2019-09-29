######################################################################
#<
#
# Function:
#      = p6_aws_managedblockchain_member_delete(network_id, member_id)
#
# Arg(s):
#    network_id - 
#    member_id - 
#
#
#>
######################################################################
p6_aws_managedblockchain_member_delete() {
    local network_id="$1"
    local member_id="$2"
    shift 2

    p6_run_write_cmd aws managedblockchain delete-member --network-id $network_id --member-id $member_id "$@"
}