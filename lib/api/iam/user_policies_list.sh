p6_aws_iam_user_policies_list() {
    local user_name="$1"
    shift 1

    p6_log_and_run aws iam list-user-policies --user-name $user_name "$@"
}
