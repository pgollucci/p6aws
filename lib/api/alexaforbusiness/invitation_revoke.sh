######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_invitation_revoke()
#
#
#
#>
######################################################################
p6_aws_alexaforbusiness_invitation_revoke() {

    p6_run_write_cmd aws alexaforbusiness revoke-invitation "$@"
}