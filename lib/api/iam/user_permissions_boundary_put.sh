######################################################################
#<
#
# Function:
#      = p6_aws_iam_user_permissions_boundary_put(user_name, permissions_boundary)
#
# Arg(s):
#    user_name - 
#    permissions_boundary - 
#
#
#>
######################################################################
p6_aws_iam_user_permissions_boundary_put() {
    local user_name="$1"
    local permissions_boundary="$2"
    shift 2

    p6_run_write_cmd aws iam put-user-permissions-boundary --user-name $user_name --permissions-boundary $permissions_boundary "$@"
}