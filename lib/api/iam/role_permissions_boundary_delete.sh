p6_aws_iam_role_permissions_boundary_delete() {
    local role_name="$1"
    shift 1

    p6_log_or_run aws iam delete-role-permissions-boundary --role-name $role_name "$@"
}
