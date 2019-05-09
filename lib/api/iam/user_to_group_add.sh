p6_aws_iam_user_to_group_add() {
    local group_name="$1"
    local user_name="$2"
    shift 2

    p6_log_or_run aws iam add-user-to-group --group-name $group_name --user-name $user_name "$@"
}
