p6_aws_iam_groups_for_user_list() {
    local user_name="$1"
    shift 1

    p6_run_read_cmd aws iam list-groups-for-user --user-name $user_name "$@"
}
