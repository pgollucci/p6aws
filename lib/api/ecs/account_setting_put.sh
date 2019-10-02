######################################################################
#<
#
# Function:
#	p6_aws_ecs_account_setting_put(name, value)
#
#  Args:
#	name - 
#	value - 
#
#>
######################################################################
p6_aws_ecs_account_setting_put() {
    local name="$1"
    local value="$2"
    shift 2

    p6_run_write_cmd aws ecs put-account-setting --name $name --value $value "$@"
}