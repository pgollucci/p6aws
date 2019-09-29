######################################################################
#<
#
# Function:
#      = p6_aws_iot_role_alias_create(role_alias, role_arn)
#
# Arg(s):
#    role_alias - 
#    role_arn - 
#
#
#>
######################################################################
p6_aws_iot_role_alias_create() {
    local role_alias="$1"
    local role_arn="$2"
    shift 2

    p6_run_write_cmd aws iot create-role-alias --role-alias $role_alias --role-arn $role_arn "$@"
}