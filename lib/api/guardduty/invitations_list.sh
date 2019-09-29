######################################################################
#<
#
# Function:
#      = p6_aws_guardduty_invitations_list()
#
#
#
#>
######################################################################
p6_aws_guardduty_invitations_list() {

    p6_run_read_cmd aws guardduty list-invitations "$@"
}