######################################################################
#<
#
# Function:
#      = p6_aws_securityhub_invitations_count_get()
#
#
#
#>
######################################################################
p6_aws_securityhub_invitations_count_get() {

    p6_run_read_cmd aws securityhub get-invitations-count "$@"
}