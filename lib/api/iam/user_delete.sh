p6_aws_iam_user_delete() {
    local user_name="$1"
    shift 1

    p6_log_or_run aws iam delete-user --user-name $user_name "$@"
}
