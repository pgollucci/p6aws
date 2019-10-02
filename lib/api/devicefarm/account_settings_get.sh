######################################################################
#<
#
# Function:
#	p6_aws_devicefarm_account_settings_get()
#
#>
######################################################################
p6_aws_devicefarm_account_settings_get() {

    p6_run_read_cmd aws devicefarm get-account-settings "$@"
}