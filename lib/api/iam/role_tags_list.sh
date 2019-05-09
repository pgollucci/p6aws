p6_aws_iam_role_tags_list() {
    local role_name="$1"
    shift 1

    p6_run_read_cmd aws iam list-role-tags --role-name $role_name "$@"
}
