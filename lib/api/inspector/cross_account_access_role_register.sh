######################################################################
#<
#
# Function:
#      = p6_aws_inspector_cross_account_access_role_register(role_arn)
#
# Arg(s):
#    role_arn - 
#
#
#>
######################################################################
p6_aws_inspector_cross_account_access_role_register() {
    local role_arn="$1"
    shift 1

    p6_run_write_cmd aws inspector register-cross-account-access-role --role-arn $role_arn "$@"
}