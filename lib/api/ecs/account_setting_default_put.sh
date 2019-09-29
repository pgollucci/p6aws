######################################################################
#<
#
# Function:
#      = p6_aws_ecs_account_setting_default_put(name, value)
#
# Arg(s):
#    name - 
#    value - 
#
#
#>
######################################################################
p6_aws_ecs_account_setting_default_put() {
    local name="$1"
    local value="$2"
    shift 2

    p6_run_write_cmd aws ecs put-account-setting-default --name $name --value $value "$@"
}