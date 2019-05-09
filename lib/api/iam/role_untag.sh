p6_aws_iam_role_untag() {
    local role_name="$1"
    local tag_keys="$2"
    shift 2

    p6_log_or_run aws iam untag-role --role-name $role_name --tag-keys $tag_keys "$@"
}
