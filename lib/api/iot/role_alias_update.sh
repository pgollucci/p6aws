######################################################################
#<
#
# Function:
#      = p6_aws_iot_role_alias_update(role_alias)
#
# Arg(s):
#    role_alias - 
#
#
#>
######################################################################
p6_aws_iot_role_alias_update() {
    local role_alias="$1"
    shift 1

    p6_run_write_cmd aws iot update-role-alias --role-alias $role_alias "$@"
}