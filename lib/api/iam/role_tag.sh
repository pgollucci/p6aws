p6_aws_iam_role_tag() {
    local role_name="$1"
    local tags="$2"
    shift 2

    p6_log_or_run aws iam tag-role --role-name $role_name --tags $tags "$@"
}
