p6_aws_iam_user_create() {
    local user_name="$1"
    shift 1

    p6_log_or_run aws iam create-user --user-name $user_name "$@"
}
