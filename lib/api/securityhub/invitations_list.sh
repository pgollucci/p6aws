######################################################################
#<
#
# Function:
#      = p6_aws_securityhub_invitations_list()
#
#
#
#>
######################################################################
p6_aws_securityhub_invitations_list() {

    p6_run_read_cmd aws securityhub list-invitations "$@"
}