######################################################################
#<
#
# Function:
#	p6_aws_ses_account_sending_enabled_update()
#
#>
######################################################################
p6_aws_ses_account_sending_enabled_update() {

    p6_run_write_cmd aws ses update-account-sending-enabled "$@"
}