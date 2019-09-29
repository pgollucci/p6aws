######################################################################
#<
#
# Function:
#      = p6_aws_managedblockchain_member_create(invitation_id, network_id, member_configuration)
#
# Arg(s):
#    invitation_id - 
#    network_id - 
#    member_configuration - 
#
#
#>
######################################################################
p6_aws_managedblockchain_member_create() {
    local invitation_id="$1"
    local network_id="$2"
    local member_configuration="$3"
    shift 3

    p6_run_write_cmd aws managedblockchain create-member --invitation-id $invitation_id --network-id $network_id --member-configuration $member_configuration "$@"
}