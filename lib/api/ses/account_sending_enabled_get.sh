######################################################################
#<
#
# Function:
#	p6_aws_ses_account_sending_enabled_get()
#
#>
######################################################################
p6_aws_ses_account_sending_enabled_get() {

    p6_run_read_cmd aws ses get-account-sending-enabled "$@"
}