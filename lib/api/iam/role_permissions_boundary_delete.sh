######################################################################
#<
#
# Function:
#      = p6_aws_iam_role_permissions_boundary_delete(role_name)
#
# Arg(s):
#    role_name - 
#
#
#>
######################################################################
p6_aws_iam_role_permissions_boundary_delete() {
    local role_name="$1"
    shift 1

    p6_run_write_cmd aws iam delete-role-permissions-boundary --role-name $role_name "$@"
}