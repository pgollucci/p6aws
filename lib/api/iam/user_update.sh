p6_aws_iam_user_update() {
    local user_name="$1"
    shift 1

    p6_run_write_cmd aws iam update-user --user-name $user_name "$@"
}
