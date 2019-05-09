p6_aws_iam_user_from_group_remove() {
    local group_name="$1"
    local user_name="$2"
    shift 2

    p6_log_or_run aws iam remove-user-from-group --group-name $group_name --user-name $user_name "$@"
}
