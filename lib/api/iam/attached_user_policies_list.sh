p6_aws_iam_attached_user_policies_list() {
    local user_name="$1"
    shift 1

    p6_run_read_cmd aws iam list-attached-user-policies --user-name $user_name "$@"
}
