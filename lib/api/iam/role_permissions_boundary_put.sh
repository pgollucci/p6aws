p6_aws_iam_role_permissions_boundary_put() {
    local role_name="$1"
    local permissions_boundary="$2"
    shift 2

    p6_log_or_run aws iam put-role-permissions-boundary --role-name $role_name --permissions-boundary $permissions_boundary "$@"
}
