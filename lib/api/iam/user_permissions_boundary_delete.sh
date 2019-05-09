p6_aws_iam_user_permissions_boundary_delete() {
    local user_name="$1"
    shift 1

    p6_run_write_cmd aws iam delete-user-permissions-boundary --user-name $user_name "$@"
}
