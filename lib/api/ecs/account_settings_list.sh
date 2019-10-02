######################################################################
#<
#
# Function:
#	p6_aws_ecs_account_settings_list()
#
#>
######################################################################
p6_aws_ecs_account_settings_list() {

    p6_run_read_cmd aws ecs list-account-settings "$@"
}