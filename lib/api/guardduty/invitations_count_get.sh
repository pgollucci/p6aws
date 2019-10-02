######################################################################
#<
#
# Function:
#	p6_aws_guardduty_invitations_count_get()
#
#>
######################################################################
p6_aws_guardduty_invitations_count_get() {

    p6_run_read_cmd aws guardduty get-invitations-count "$@"
}