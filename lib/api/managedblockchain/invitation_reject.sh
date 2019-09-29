######################################################################
#<
#
# Function:
#      = p6_aws_managedblockchain_invitation_reject(invitation_id)
#
# Arg(s):
#    invitation_id - 
#
#
#>
######################################################################
p6_aws_managedblockchain_invitation_reject() {
    local invitation_id="$1"
    shift 1

    p6_run_write_cmd aws managedblockchain reject-invitation --invitation-id $invitation_id "$@"
}