p6_aws_iam_role_permissions_boundary_put() {
    local role_name="$1"
    local permissions_boundary="$2"
    shift 2

    p6_run_write_cmd aws iam put-role-permissions-boundary --role-name $role_name --permissions-boundary $permissions_boundary "$@"
}
