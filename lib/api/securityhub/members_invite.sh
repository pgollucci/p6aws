######################################################################
#<
#
# Function:
#      = p6_aws_securityhub_members_invite()
#
#
#
#>
######################################################################
p6_aws_securityhub_members_invite() {

    p6_run_write_cmd aws securityhub invite-members "$@"
}