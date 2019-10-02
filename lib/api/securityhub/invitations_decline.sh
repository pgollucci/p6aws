######################################################################
#<
#
# Function:
#	p6_aws_securityhub_invitations_decline()
#
#>
######################################################################
p6_aws_securityhub_invitations_decline() {

    p6_run_write_cmd aws securityhub decline-invitations "$@"
}