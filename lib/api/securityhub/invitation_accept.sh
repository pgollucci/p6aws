######################################################################
#<
#
# Function:
#	p6_aws_securityhub_invitation_accept()
#
#>
######################################################################
p6_aws_securityhub_invitation_accept() {

    p6_run_write_cmd aws securityhub accept-invitation "$@"
}