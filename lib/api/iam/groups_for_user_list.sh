p6_aws_iam_groups_for_user_list() {
    local user_name="$1"
    shift 1

    p6_log_and_run aws iam list-groups-for-user --user-name $user_name "$@"
}
