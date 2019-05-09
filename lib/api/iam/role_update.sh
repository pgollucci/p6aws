p6_aws_iam_role_update() {
    local role_name="$1"
    shift 1

    p6_log_or_run aws iam update-role --role-name $role_name "$@"
}
